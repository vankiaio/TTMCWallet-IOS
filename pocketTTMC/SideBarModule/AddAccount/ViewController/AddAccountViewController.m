//
//  AddAccountViewController.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/27.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "AddAccountViewController.h"
#import "AddAccountMainService.h"
#import "AddAccountTableViewCell.h"
#import "ImportAccountViewController.h"
#import "VipRegistAccountViewController.h"
#import "PayRegistAccountViewController.h"
#import "CreateAccountViewController.h"
#import "CheckWhetherHasFreeQuotaResuest.h"
#import "CheckWhetherHasFreeQuotaResult.h"
#import "CommonDialogHasTitleView.h"
#import "CreatePocketViewController.h"
#import "ImportAccountWithoutAccountNameBaseViewController.h"

@interface AddAccountViewController ()<CommonDialogHasTitleViewDelegate, UINavigationControllerDelegate>
@property(nonatomic, strong) NavigationView *navView;
@property(nonatomic , strong) AddAccountMainService *mainService;
@property(nonatomic , strong) CheckWhetherHasFreeQuotaResuest *checkWhetherHasFreeQuotaResuest;
@property(nonatomic , strong) CheckWhetherHasFreeQuotaResult *checkWhetherHasFreeQuotaResult;
@property(nonatomic , strong) CommonDialogHasTitleView *commonDialogHasTitleView;
@end

@implementation AddAccountViewController


- (NavigationView *)navView{
    if (!_navView) {
        _navView = [NavigationView navigationViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAVIGATIONBAR_HEIGHT) LeftBtnImgName:@"back" title:NSLocalizedString(@"添加账号", nil)rightBtnImgName:@"" delegate:self];
        _navView.leftBtn.lee_theme.LeeAddButtonImage(SOCIAL_MODE, [UIImage imageNamed:@"back"], UIControlStateNormal).LeeAddButtonImage(BLACKBOX_MODE, [UIImage imageNamed:@"back_white"], UIControlStateNormal);
        _navView.lee_theme.LeeConfigBackgroundColor(@"baseAddAccount_background_color");
    }
    return _navView;
}

- (AddAccountMainService *)mainService{
    if (!_mainService) {
        _mainService = [[AddAccountMainService alloc] init];
    }
    return _mainService;
}

- (CheckWhetherHasFreeQuotaResuest *)checkWhetherHasFreeQuotaResuest{
    if (!_checkWhetherHasFreeQuotaResuest) {
        _checkWhetherHasFreeQuotaResuest = [[CheckWhetherHasFreeQuotaResuest alloc] init];
    }
    return _checkWhetherHasFreeQuotaResuest;
}

- (CommonDialogHasTitleView *)commonDialogHasTitleView{
    if (!_commonDialogHasTitleView) {
        _commonDialogHasTitleView = [[CommonDialogHasTitleView alloc] initWithFrame:(CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT))];
        _commonDialogHasTitleView.delegate = self;
    }
    return _commonDialogHasTitleView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.navView];
    [self.view addSubview:self.mainTableView];
    self.view.lee_theme.LeeConfigBackgroundColor(@"baseAddAccount_background_color");
    self.mainTableView.lee_theme.LeeConfigBackgroundColor(@"baseAddAccount_background_color");
    self.mainTableView.mj_header.hidden = YES;
    self.mainTableView.mj_footer.hidden = YES;
    [self checkWhetherHasFreeQuota];
    WS(weakSelf);
    [self.mainService buildDataSource:^(id service, BOOL isSuccess) {
        [weakSelf.mainTableView reloadData];
    }];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AddAccountTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_REUSEIDENTIFIER];
    if (!cell) {
        cell = [[AddAccountTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:CELL_REUSEIDENTIFIER];
    }
    OptionModel *model = self.mainService.dataSourceArray[indexPath.row];
    cell.model = model;
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 90+5+5;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.mainService.dataSourceArray.count;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Wallet *wallet = [[[WalletTableManager walletTable] selectCurrentWallet] firstObject];
    if (wallet && (wallet.wallet_shapwd.length <= 6)) {
        [self addCommonDialogHasTitleView];
        return;
    }
    OptionModel *model = self.mainService.dataSourceArray[indexPath.row];
    if ([model.optionName isEqualToString:NSLocalizedString(@"导入账号", nil)]) {
        ImportAccountWithoutAccountNameBaseViewController *vc = [[ImportAccountWithoutAccountNameBaseViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([model.optionName isEqualToString:NSLocalizedString(@"创建账号", nil)]){
        PayRegistAccountViewController *vc = [[PayRegistAccountViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([model.optionName isEqualToString:NSLocalizedString(@"我是VIP", nil)]){
        VipRegistAccountViewController *vc = [[VipRegistAccountViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if ([model.optionName isEqualToString:NSLocalizedString(@"限时免费", nil)]){
        if (self.checkWhetherHasFreeQuotaResult.data == YES) {
            CreateAccountViewController *vc = [[CreateAccountViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }else{
            [TOASTVIEW showWithText:self.checkWhetherHasFreeQuotaResult.message];
        }
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 150;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIButton *btn = [[UIButton alloc] init];
    [btn setTitle:NSLocalizedString(@"跳过添加", nil) forState:(UIControlStateNormal)];
    [btn setTitleColor:HEXCOLOR(0x999999) forState:UIControlStateNormal];
    btn.font = [UIFont systemFontOfSize:13];
    [btn setBackgroundColor:[UIColor clearColor]];
    [btn addTarget:self action:@selector(footerBtnDidClick) forControlEvents:(UIControlEventTouchUpInside)];
    btn.frame = CGRectMake(0, MARGIN_10, SCREEN_WIDTH, 40);
    return btn;
}

- (void)footerBtnDidClick{
    if (self.addAccountViewControllerFromMode == AddAccountViewControllerFromLoginPage) {
        dispatch_async(dispatch_get_main_queue(), ^{
            for (UIView *view in WINDOW.subviews) {
                [view removeFromSuperview];
            }
            [((AppDelegate *)[[UIApplication sharedApplication] delegate]).window setRootViewController: [[BaseTabBarController alloc] init]];
        });
        
    }else if (self.addAccountViewControllerFromMode == AddAccountViewControllerFromOtherPage){
        [self dismissViewControllerAnimated:YES completion:NULL];
        
    }
}

- (void)checkWhetherHasFreeQuota{
    WS(weakSelf);
    [self.checkWhetherHasFreeQuotaResuest getDataSusscess:^(id DAO, id data) {
        CheckWhetherHasFreeQuotaResult *result = [CheckWhetherHasFreeQuotaResult mj_objectWithKeyValues:data];
        weakSelf.checkWhetherHasFreeQuotaResult = result;
    } failure:^(id DAO, NSError *error) {
        NSLog(@"%@", error);
    }];
}

-(void)leftBtnDidClick{
    if (self.addAccountViewControllerFromMode == AddAccountViewControllerFromLoginPage) {
        [self.navigationController popViewControllerAnimated:YES];
    }else if (self.addAccountViewControllerFromMode == AddAccountViewControllerFromOtherPage){
        [self dismissViewControllerAnimated:YES completion:NULL];
    }

}

//CommonDialogHasTitleViewDelegate
- (void)commonDialogHasTitleViewConfirmBtnDidClick:(UIButton *)sender{
    // 创建钱包(本地数据库)
    CreatePocketViewController *vc = [[CreatePocketViewController alloc] init];
    vc.createPocketViewControllerFromMode = CreatePocketViewControllerFromSocialMode;
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)addCommonDialogHasTitleView{
    [self.view addSubview:self.commonDialogHasTitleView];
    
    self.commonDialogHasTitleView.contentTextView.textAlignment = NSTextAlignmentCenter;
    self.commonDialogHasTitleView.comfirmBtnText = NSLocalizedString(@"去设置", nil);
    
    OptionModel *model = [[OptionModel alloc] init];
    model.optionName = NSLocalizedString(@"注意", nil);
    model.detail = NSLocalizedString(@"设置钱包密码继续操作", nil);
    [self.commonDialogHasTitleView setModel:model];
}
@end
