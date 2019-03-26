//
//  VipRegistAccountViewController.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/31.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "VipRegistAccountViewController.h"
#import "VipRegistAccountHeaderView.h"
#import "TtmcPrivateKey.h"
#import "BackupAccountViewController.h"
#import "VipRegistAccountService.h"
#import "CreateAccountRequest.h"
#import "GetAccountRequest.h"
#import "GetAccount.h"
#import "GetAccountResult.h"

@interface VipRegistAccountViewController ()<VipRegistAccountHeaderViewDelegate, LoginPasswordViewDelegate>
@property(nonatomic, strong) NavigationView *navView;
@property(nonatomic, strong) VipRegistAccountHeaderView *headerView;
@property(nonatomic, strong) LoginPasswordView *loginPasswordView;
@property(nonatomic, strong) VipRegistAccountService *vipRegistAccountService;
@property(nonatomic, strong) GetAccountRequest *getAccountRequest;

@end

@implementation VipRegistAccountViewController

- (NavigationView *)navView{
    if (!_navView) {
        _navView = [NavigationView navigationViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAVIGATIONBAR_HEIGHT) LeftBtnImgName:@"back" title:NSLocalizedString(@"VIP创建", nil)rightBtnTitleName:@"" delegate:self];
        _navView.leftBtn.lee_theme.LeeAddButtonImage(SOCIAL_MODE, [UIImage imageNamed:@"back"], UIControlStateNormal).LeeAddButtonImage(BLACKBOX_MODE, [UIImage imageNamed:@"back_white"], UIControlStateNormal);
    }
    return _navView;
}

- (VipRegistAccountHeaderView *)headerView{
    if (!_headerView) {
        _headerView = [[[NSBundle mainBundle] loadNibNamed:@"VipRegistAccountHeaderView" owner:nil options:nil] firstObject];
        _headerView.delegate = self;
        _headerView.frame = CGRectMake(0, NAVIGATIONBAR_HEIGHT, SCREEN_WIDTH, 300);
    }
    return _headerView;
}

- (LoginPasswordView *)loginPasswordView{
    if (!_loginPasswordView) {
        _loginPasswordView = [[[NSBundle mainBundle] loadNibNamed:@"LoginPasswordView" owner:nil options:nil] firstObject];
        _loginPasswordView.frame = self.view.bounds;
        _loginPasswordView.delegate = self;
    }
    return _loginPasswordView;
}

- (VipRegistAccountService *)vipRegistAccountService{
    if (!_vipRegistAccountService) {
        _vipRegistAccountService = [[VipRegistAccountService alloc] init];
    }
    return _vipRegistAccountService;
}

- (GetAccountRequest *)getAccountRequest{
    if (!_getAccountRequest) {
        _getAccountRequest = [[GetAccountRequest alloc] init];
    }
    return _getAccountRequest;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.navView];
    [self.view addSubview:self.headerView];
    
}

//VipRegistAccountHeaderViewDelegate
- (void)privateKeyBeSameModeBtnDidClick:(UIButton *)sender{
    self.headerView.privateKeyBeSameModeBtn.selected = YES;
    self.headerView.privateKeyBeDiffrentModeBtn.selected = NO;
}

- (void)privateKeyBeDiffrentModeBtnDidClick:(UIButton *)sender{
    self.headerView.privateKeyBeSameModeBtn.selected = NO;
    self.headerView.privateKeyBeDiffrentModeBtn.selected = YES;
}

- (void)createBtnDidClick:(UIButton *)sender{
    if (IsStrEmpty(self.headerView.accountNameTF.text) || IsStrEmpty(self.headerView.vip_code_TF.text)) {
        [TOASTVIEW showWithText:NSLocalizedString(@"请保证输入信息的完整~", nil)];
        return;
    }
    
    if (![ RegularExpression validateTtmcAccountName:self.headerView.accountNameTF.text ]) {
        [TOASTVIEW showWithText:NSLocalizedString(@"5~12位字符，只能由小写字母a~z和数字1~5组成。", nil)];
        return;
    }
    
    if (self.headerView.privateKeyBeSameModeBtn.isSelected == NO && self.headerView.privateKeyBeDiffrentModeBtn.selected == NO ) {
        [TOASTVIEW showWithText:NSLocalizedString(@"请选择私钥模式", nil)];
        return;
    }
    
    [self checkAccountExist];
}

- (void)checkAccountExist{
    WS(weakSelf);
    self.getAccountRequest.name = VALIDATE_STRING(self.headerView.accountNameTF.text) ;
    [self.getAccountRequest postDataSuccess:^(id DAO, id data) {
        GetAccountResult *result = [GetAccountResult mj_objectWithKeyValues:data];
        if (![result.code isEqualToNumber:@0]) {
            [TOASTVIEW showWithText: result.message];
        }else{
            GetAccount *model = [GetAccount mj_objectWithKeyValues:result.data];
            if (model.account_name) {
                [TOASTVIEW showWithText: NSLocalizedString(@"账号已存在", nil)];
                return ;
            }else{
                [weakSelf.view addSubview:self.loginPasswordView];
            }
        }
    } failure:^(id DAO, NSError *error) {
        NSLog(@"%@", error);
    }];
}

// LoginPasswordViewDelegate
-(void)cancleBtnDidClick:(UIButton *)sender{
    [self.loginPasswordView removeFromSuperview];
}

-(void)confirmBtnDidClick:(UIButton *)sender{
    // 验证密码输入是否正确
    Wallet *current_wallet = CURRENT_WALLET;
    
    if (![WalletUtil validateWalletPasswordWithSha256:current_wallet.wallet_shapwd password:self.loginPasswordView.inputPasswordTF.text]) {
        [TOASTVIEW showWithText:NSLocalizedString(@"密码输入错误!", nil)];
        return;
    }
    [SVProgressHUD show];
    [self createkeys];
}

/**
 生成注册ttmc账号需要的所有 key
 account_active_private_key;
 account_active_public_key;
 account_owner_private_key;
 account_owner_public_key;
 */
- (void)createkeys{
    WS(weakSelf);
    TtmcPrivateKey *ownerPrivateKey = [[TtmcPrivateKey alloc] initTtmcPrivateKey];
    TtmcPrivateKey *activePrivateKey;
    if (self.headerView.privateKeyBeSameModeBtn.selected == YES) {
        activePrivateKey = ownerPrivateKey;
    }else{
        activePrivateKey = [[TtmcPrivateKey alloc] initTtmcPrivateKey];
    }
    weakSelf.vipRegistAccountService.inviteCodeRegisterRequest.inviteCode = weakSelf.headerView.vip_code_TF.text;
    if (LEETHEME_CURRENTTHEME_IS_SOCAIL_MODE) {
        weakSelf.vipRegistAccountService.inviteCodeRegisterRequest.uid = CURRENT_WALLET_UID;
    }else if (LEETHEME_CURRENTTHEME_IS_BLACKBOX_MODE){
        weakSelf.vipRegistAccountService.inviteCodeRegisterRequest.uid = @"6f1a8e0eb24afb7ddc829f96f9f74e9d";
    }
    weakSelf.vipRegistAccountService.inviteCodeRegisterRequest.ttmcAccountName = weakSelf.headerView.accountNameTF.text;
    weakSelf.vipRegistAccountService.inviteCodeRegisterRequest.ownerKey = ownerPrivateKey.ttmcPublicKey;
    weakSelf.vipRegistAccountService.inviteCodeRegisterRequest.activeKey = activePrivateKey.ttmcPublicKey;
    NSLog(@"{ownerPrivateKey:%@\nttmcPublicKey:%@\nactivePrivateKey:%@\nttmcPublicKey:%@\n}", ownerPrivateKey.ttmcPrivateKey, ownerPrivateKey.ttmcPublicKey, activePrivateKey.ttmcPrivateKey, activePrivateKey.ttmcPublicKey);
    // 创建ttmc账号
    
    [weakSelf.vipRegistAccountService createTTMCAccount:^(id service, BOOL isSuccess) {
        
        if (isSuccess) {
            NSNumber *code = service[@"code"];
            if ([code isEqualToNumber:@0]) {
                // 本地数据库添加账号
                AccountInfo *model = [[AccountInfo alloc] init];
                model.account_name = weakSelf.headerView.accountNameTF.text;
                model.account_img = ACCOUNT_DEFALUT_AVATAR_IMG_URL_STR;
                model.account_active_public_key = activePrivateKey.ttmcPublicKey;
                model.account_owner_public_key = ownerPrivateKey.ttmcPublicKey;
                model.account_active_private_key = [AESCrypt encrypt:activePrivateKey.ttmcPrivateKey password:weakSelf.loginPasswordView.inputPasswordTF.text];
                model.account_owner_private_key = [AESCrypt encrypt:ownerPrivateKey.ttmcPrivateKey password:weakSelf.loginPasswordView.inputPasswordTF.text];
                model.is_privacy_policy = @"0";
                [[AccountsTableManager accountTable] addRecord: model];
                [WalletUtil setMainAccountWithAccountInfoModel:model];
                
                
                BackupAccountViewController *vc = [[BackupAccountViewController alloc] init];
                vc.accountName =  weakSelf.headerView.accountNameTF.text ;
                [weakSelf.navigationController pushViewController:vc animated:YES];
                
            }else{
                [TOASTVIEW showWithText:VALIDATE_STRING(service[@"message"])];
            }
            
        }
        [weakSelf.loginPasswordView removeFromSuperview];
    }];
}






// NavigationViewDelegate
-(void)leftBtnDidClick{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
