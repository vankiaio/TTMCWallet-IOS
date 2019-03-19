//
//  LanguageSettingViewController.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/8.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "LanguageSettingViewController.h"
#import "LanguageSettingService.h"
#import "AppDelegate.h"
#import "BaseTabBarController.h"

@interface LanguageSettingViewController ()<NavigationViewDelegate>
@property(nonatomic, strong) NavigationView *navView;
@property(nonatomic , strong) LanguageSettingService *mainService;
@end

@implementation LanguageSettingViewController

- (LanguageSettingService *)mainService{
    if (!_mainService) {
        _mainService = [[LanguageSettingService alloc] init];
    }
    return _mainService;
}

- (NavigationView *)navView{
    if (!_navView) {
        _navView = [NavigationView navigationViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAVIGATIONBAR_HEIGHT) LeftBtnImgName:@"back" title:NSLocalizedString(@"语言", nil) rightBtnImgName:@"" delegate:self];
        _navView.leftBtn.lee_theme.LeeAddButtonImage(SOCIAL_MODE, [UIImage imageNamed:@"back"], UIControlStateNormal).LeeAddButtonImage(BLACKBOX_MODE, [UIImage imageNamed:@"back_white"], UIControlStateNormal);
        
    }
    return _navView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.navView];
    [self.view addSubview:self.mainTableView];
    WS(weakSelf);
    [self.mainService buildDataSource:^(id service, BOOL isSuccess) {
        [weakSelf.mainTableView reloadData];
    }];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_REUSEIDENTIFIER];
    if (!cell) {
        cell = [[BaseTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:CELL_REUSEIDENTIFIER];
    }
    cell.textLabel.text = self.mainService.dataSourceArray[indexPath.row];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.mainService.dataSourceArray.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 66.5;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    // 设置语言
    if (indexPath.row == 0) {
        if ([NSBundle isChineseLanguage]) {
            [TOASTVIEW showWithText: NSLocalizedString(@"当前语言已经是中文！", nil)];
            return;
        }else{
            [DAConfig setUserLanguage:@"zh-Hans"];
            [self changeLanguage];
        }
    } else if (indexPath.row == 1) {
        if (![NSBundle isChineseLanguage]) {
            [TOASTVIEW showWithText: NSLocalizedString(@"当前语言已经是英文！", nil)];
            return;
        }else{
            [DAConfig setUserLanguage:@"en"];
            [self changeLanguage];
        }
        
    }
    
}

- (void)changeLanguage{
    dispatch_async(dispatch_get_main_queue(), ^{
        for (UIView *view in WINDOW.subviews) {
            [view removeFromSuperview];
        }
        AppDelegate *appDele = (AppDelegate *)[UIApplication sharedApplication].delegate;
        BaseTabBarController * vc =[[BaseTabBarController alloc]init];
        appDele.window.rootViewController = vc;
        [TOASTVIEW showWithText:NSLocalizedString(@"语言切换中", nil) duration:1];
    });
}

-(void)leftBtnDidClick{
    [self.navigationController popViewControllerAnimated:YES];
}



@end
