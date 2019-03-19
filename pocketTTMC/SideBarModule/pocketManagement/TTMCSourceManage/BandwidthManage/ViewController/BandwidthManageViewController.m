//
//  BandwidthManageViewController.m
//  pocketTTMC
//
//  Created by 师巍巍 on 21/06/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BandwidthManageViewController.h"
#import "BandwidthManageHeaderView.h"
#import "BandwidthManageTableViewCell.h"
#import "TTMCResource.h"
#import "BandwidthManageCellModel.h"
#import "TTMCResourceService.h"
#import "ModifyApproveViewController.h"



NSString * const TradeBandwidthDidSuccessNotification = @"TradeBandwidthDidSuccessNotification";

@interface BandwidthManageViewController ()
@property(nonatomic , strong) BandwidthManageHeaderView *headerView;
@property(nonatomic , strong) TTMCResourceService *ttmcResourceService;
@property(nonatomic , strong) TTMCResourceResult *ttmcResourceResult;
@end

@implementation BandwidthManageViewController

- (BandwidthManageHeaderView *)headerView{
    if (!_headerView) {
        _headerView = [[[NSBundle mainBundle] loadNibNamed:@"BandwidthManageHeaderView" owner:nil options:nil] firstObject];
        _headerView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 140);
        //        _headerView.delegate = self;
    }
    return _headerView;
}

-(AccountResult *)accountResult{
    if (!_accountResult) {
        _accountResult = [[AccountResult alloc] init];
    }
    return _accountResult;
}

- (TTMCResourceService *)ttmcResourceService{
    if (!_ttmcResourceService) {
        _ttmcResourceService = [[TTMCResourceService alloc] init];
    }
    return _ttmcResourceService;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self buildDataSource];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.mainTableView];
    self.mainTableView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT - NAVIGATIONBAR_HEIGHT);
    [self.mainTableView setTableHeaderView:self.headerView];
    self.mainTableView.mj_header.hidden = YES;
    self.mainTableView.mj_footer.hidden = YES;
    self.mainTableView.lee_theme
    .LeeConfigBackgroundColor(@"baseHeaderView_background_color");
    [self.mainTableView registerNib:[UINib nibWithNibName:@"BandwidthManageTableViewCell" bundle:nil] forCellReuseIdentifier:CELL_REUSEUDENTIFIER1];
    [self buildDataSource];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tradeBandwidthDidFinish) name:TradeBandwidthDidSuccessNotification object:nil];
}


- (void)buildDataSource{
    WS(weakSelf);
    self.ttmcResourceService.getAccountRequest.name = self.accountResult.data.account_name;
    [self.ttmcResourceService get_account:^(TTMCResourceResult *result, BOOL isSuccess) {
        if (isSuccess) {
            [weakSelf.mainTableView reloadData];
            weakSelf.ttmcResourceResult = result;
            NSArray *cpuArr = [result.data.cpu_weight componentsSeparatedByString:@" "];
            NSArray *netArr = [result.data.net_weight componentsSeparatedByString:@" "];
            if (cpuArr.count>0 && netArr.count > 0) {
                NSString *cpuStr = cpuArr[0];
                NSString *netStr = netArr[0];
                weakSelf.headerView.ttmcAmountLabel.text = [NSString stringWithFormat:@"%.4f", cpuStr.doubleValue + netStr.doubleValue];
            }
        }
    }];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BandwidthManageTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"BandwidthManageTableViewCell"];
    if (!cell) {
        cell =  [[NSBundle mainBundle]loadNibNamed:@"BandwidthManageTableViewCell" owner:self options:nil].firstObject;
    }
    BandwidthManageCellModel *model = self.ttmcResourceService.dataSourceArray[indexPath.section];
    cell.model = model;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:indexPath];
    ModifyApproveViewController *vc = [[ModifyApproveViewController alloc] init];
    if (indexPath.section == 0) {
        vc.pageType = @"cpu_bandwidth";
    }else if (indexPath.section == 1){
        vc.pageType = @"net_bandwidth";
    }
    vc.accountResult = self.accountResult;
    vc.ttmcResourceResult = self.ttmcResourceResult;
    [self.navigationController pushViewController:vc animated:YES];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.ttmcResourceService.dataSourceArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 147;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    BaseBoldLineView *view = [[BaseBoldLineView alloc] init];
    return view;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 10;
}

- (void)tradeBandwidthDidFinish{
    [self buildDataSource];
}

-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
