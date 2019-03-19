//
//  TradeRamViewController.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "TradeRamViewController.h"
#import "TradeRamHeaderView.h"
#import "Buy_ram_abi_json_to_bin_request.h"
#import "Sell_ram_abi_json_to_bin_request.h"
#import "TransferService.h"
#import "AccountInfo.h"
#import "Get_table_rows_request.h"
#import "PriceModel.h"
#import "PriceResult.h"

@interface TradeRamViewController ()<UINavigationControllerDelegate, TransferServiceDelegate, LoginPasswordViewDelegate, TradeRamHeaderViewDelegate>
@property(nonatomic , strong) TradeRamHeaderView *headerView;
@property(nonatomic, strong) NavigationView *navView;
@property(nonatomic , strong) Buy_ram_abi_json_to_bin_request *buy_ram_abi_json_to_bin_request;
@property(nonatomic , strong) Sell_ram_abi_json_to_bin_request *sell_ram_abi_json_to_bin_request;
@property(nonatomic, strong) LoginPasswordView *loginPasswordView;
@property(nonatomic , strong) TransferService *transferService;
@property (nonatomic , strong) Get_table_rows_request *get_table_rows_request;
@property (nonatomic , assign) CGFloat price;
@property (nonatomic , copy) NSString *price_str;

@end

@implementation TradeRamViewController

- (NavigationView *)navView{
    if (!_navView) {
        NSString *title ;
        if ([self.pageType isEqualToString:NSLocalizedString(@"buy_ram", nil)]) {
            title = NSLocalizedString(@"买入配额", nil);
        }else if ([self.pageType isEqualToString:NSLocalizedString(@"sell_ram", nil)]){
            title = NSLocalizedString(@"卖出配额", nil);
        }
        
        _navView = [NavigationView navigationViewWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, NAVIGATIONBAR_HEIGHT) LeftBtnImgName:@"back" title:title rightBtnTitleName:nil delegate:self];
        _navView.leftBtn.lee_theme.LeeAddButtonImage(SOCIAL_MODE, [UIImage imageNamed:@"back"], UIControlStateNormal).LeeAddButtonImage(BLACKBOX_MODE, [UIImage imageNamed:@"back_white"], UIControlStateNormal);
        _navView.delegate = self;
    }
    return _navView;
}

- (TradeRamHeaderView *)headerView{
    if (!_headerView) {
        _headerView = [[[NSBundle mainBundle] loadNibNamed:@"TradeRamHeaderView" owner:nil options:nil] firstObject];
        _headerView.frame = CGRectMake(0, NAVIGATIONBAR_HEIGHT, SCREEN_WIDTH, 265);
        _headerView.delegate = self;
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

- (Sell_ram_abi_json_to_bin_request *)sell_ram_abi_json_to_bin_request{
    if (!_sell_ram_abi_json_to_bin_request) {
        _sell_ram_abi_json_to_bin_request = [[Sell_ram_abi_json_to_bin_request alloc] init];
    }
    return _sell_ram_abi_json_to_bin_request;
}

- (Buy_ram_abi_json_to_bin_request *)buy_ram_abi_json_to_bin_request{
    if (!_buy_ram_abi_json_to_bin_request) {
        _buy_ram_abi_json_to_bin_request = [[Buy_ram_abi_json_to_bin_request alloc] init];
    }
    return _buy_ram_abi_json_to_bin_request;
}

-(Get_table_rows_request *)get_table_rows_request{
    if (!_get_table_rows_request) {
        _get_table_rows_request = [[Get_table_rows_request alloc] init];
    }
    return _get_table_rows_request;
}

-(AccountResult *)accountResult{
    if (!_accountResult) {
        _accountResult = [[AccountResult alloc] init];
    }
    return _accountResult;
}

-(TransferService *)transferService{
    if (!_transferService) {
        _transferService = [[TransferService alloc] init];
        _transferService.delegate = self;
    }
    return _transferService;
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    // 禁用返回手势
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = NO;
    }
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    // 开启返回手势
    if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
        self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.navView];
    [self.view addSubview:self.headerView];
    self.navigationController.navigationBar.tintColor = [UIColor clearColor];
    if ([self.pageType isEqualToString:NSLocalizedString(@"buy_ram", nil)]) {
        self.headerView.titleLabel.text = NSLocalizedString(@"调整买入数量 :", nil);
    }else if ([self.pageType isEqualToString:NSLocalizedString(@"sell_ram", nil)]){
        self.headerView.titleLabel.text = NSLocalizedString(@"调整卖出数量 :", nil);
    }
    
    self.view.lee_theme
    .LeeConfigBackgroundColor(@"baseHeaderView_background_color");
    
    [self buildDataSource];
}

- (void)buildDataSource{
    WS(weakSelf);
    self.get_table_rows_request.code = ContractName_TTMCIO;
    self.get_table_rows_request.scope = ContractName_TTMCIO;
    self.get_table_rows_request.table = @"rammarket";
    [self.get_table_rows_request postOuterDataSuccess:^(id DAO, id data) {
        PriceResult *result = [PriceResult mj_objectWithKeyValues:data];
        NSString *quote_balanceStr = result.data.quote_balance;
        NSString *base_balanceStr = result.data.base_balance;
        if ((quote_balanceStr.length > 4) && (base_balanceStr.length > 4)) {
            NSString *quote_balance = [quote_balanceStr substringToIndex:quote_balanceStr.length -4];
            NSString *base_balance = [base_balanceStr substringToIndex:base_balanceStr.length -4];
            self.price_str = [quote_balance yw_stringByDividingBy:base_balance withRoundingMode:NSRoundPlain scale:8];
            
            if ([self.pageType isEqualToString: NSLocalizedString(@"buy_ram", nil)]) {
                weakSelf.headerView.amountLabel.text = [NSString stringWithFormat:@"%.4f TTMC", self.accountResult.data.ttmc_balance.doubleValue* weakSelf.headerView.modifyRamSlider.value];
                weakSelf.headerView.predictLabel.text = [NSString stringWithFormat:@"预计配额：%@ bytes", [[self.accountResult.data.ttmc_balance yw_stringByDividingBy:self.price_str withRoundingMode:(NSRoundPlain) scale:4] yw_stringByMultiplyingBy:@"0.5" withRoundingMode:(NSRoundPlain) scale:4] ];
                
                
            }else if ([self.pageType isEqualToString: NSLocalizedString(@"sell_ram", nil)]){
                weakSelf.headerView.amountLabel.text = [NSString stringWithFormat:@"%.4f bytes", self.ttmcResourceResult.data.ram_max.doubleValue * weakSelf.headerView.modifyRamSlider.value  ];
                weakSelf.headerView.predictLabel.text = [NSString stringWithFormat:@"%@：%@ TTMC", NSLocalizedString(@"预计出售价格", nil), [[self.ttmcResourceResult.data.ram_max yw_stringByMultiplyingBy:self.price_str withRoundingMode:(NSRoundPlain) scale:4] yw_stringByMultiplyingBy:@"0.5" withRoundingMode:(NSRoundPlain) scale:4] ];
                
                
                
            }
        }
        
    } failure:^(id DAO, NSError *error) {
        
    }];
}

//TradeRamHeaderViewDelegate
- (void)modifySliderDidSlide:(UISlider *)sender{
    // 保留两位小数
    CGFloat progress = (floorf(sender.value*100 + 0.5))/100;
    
    if ([self.pageType isEqualToString: NSLocalizedString(@"buy_ram", nil)]) {
        self.headerView.amountLabel.text = [NSString stringWithFormat:@"%.4f TTMC", self.accountResult.data.ttmc_balance.doubleValue * progress];
    self.headerView.predictLabel.text =  [NSString stringWithFormat:@"%@ bytes", [[self.accountResult.data.ttmc_balance yw_stringByDividingBy:self.price_str withRoundingMode:(NSRoundPlain) scale:4] yw_stringByMultiplyingBy:[NSString stringWithFormat:@"%.2f", progress] withRoundingMode:(NSRoundPlain) scale:4]];
        
    }else if ([self.pageType isEqualToString: NSLocalizedString(@"sell_ram", nil)]){
        self.headerView.amountLabel.text = [NSString stringWithFormat:@"%.4f bytes", self.ttmcResourceResult.data.ram_max.doubleValue * progress  ];
        self.headerView.predictLabel.text = [NSString stringWithFormat:@"预计出售价格：%@ TTMC", [[self.ttmcResourceResult.data.ram_max yw_stringByMultiplyingBy:self.price_str withRoundingMode:(NSRoundPlain) scale:4] yw_stringByMultiplyingBy:[NSString stringWithFormat:@"%.2f", progress] withRoundingMode:(NSRoundPlain) scale:4]];
    }
}

-(void)confirmTradeRamBtnDidClick{
    double amount;
    if (self.headerView.amountLabel.text.length > 4) {
        amount = [self.headerView.amountLabel.text substringToIndex:self.headerView.amountLabel.text.length-4].doubleValue;
        if (amount == 0) {
            [TOASTVIEW showWithText:@"交易数量不能为0"];
            [self removeLoginPasswordView];
            return;
        }else{
            [self.view addSubview:self.loginPasswordView];
        }
    }
}


// loginPasswordViewDelegate
- (void)cancleBtnDidClick:(UIButton *)sender{
    [self removeLoginPasswordView];
}

- (void)confirmBtnDidClick:(UIButton *)sender{
    
    // 验证密码输入是否正确
    Wallet *current_wallet = CURRENT_WALLET;
    if (![WalletUtil validateWalletPasswordWithSha256:current_wallet.wallet_shapwd password:self.loginPasswordView.inputPasswordTF.text]) {
        [TOASTVIEW showWithText:NSLocalizedString(@"密码输入错误!", nil)];
        return;
    }
    [self tradeRam];
}

- (void)tradeRam{
    if ([self.pageType isEqualToString: NSLocalizedString(@"buy_ram", nil)]) {
        [self buyRam];
    }else if ([self.pageType isEqualToString: NSLocalizedString(@"sell_ram", nil)]){
        [self sellRam];
    }
}

- (void)buyRam{
    self.buy_ram_abi_json_to_bin_request.action = ContractAction_BUYRAM;
    self.buy_ram_abi_json_to_bin_request.code = ContractName_TTMCIO;
    self.buy_ram_abi_json_to_bin_request.payer = self.ttmcResourceResult.data.account_name;
    self.buy_ram_abi_json_to_bin_request.receiver = self.ttmcResourceResult.data.account_name;
    self.buy_ram_abi_json_to_bin_request.quant = [NSString stringWithFormat:@"%@",self.headerView.amountLabel.text];
    WS(weakSelf);
    [self.buy_ram_abi_json_to_bin_request postOuterDataSuccess:^(id DAO, id data) {
#pragma mark -- [@"data"]
        NSLog(@"approve_abi_to_json_request_success: --binargs: %@",data[@"data"][@"binargs"] );
        AccountInfo *accountInfo = [[AccountsTableManager accountTable] selectAccountTableWithAccountName:weakSelf.ttmcResourceResult.data.account_name];
        if (!accountInfo) {
            [TOASTVIEW showWithText: NSLocalizedString(@"本地无此账号!", nil) ];
            return ;
        }
        weakSelf.transferService.available_keys = @[VALIDATE_STRING(accountInfo.account_owner_public_key) , VALIDATE_STRING(accountInfo.account_active_public_key)];
        weakSelf.transferService.action = ContractAction_BUYRAM;
        weakSelf.transferService.sender = weakSelf.ttmcResourceResult.data.account_name;
        weakSelf.transferService.code = ContractName_TTMCIO;
#pragma mark -- [@"data"]
        weakSelf.transferService.binargs = data[@"data"][@"binargs"];
        weakSelf.transferService.pushTransactionType = PushTransactionTypeTransfer;
        weakSelf.transferService.password = weakSelf.loginPasswordView.inputPasswordTF.text;
        [weakSelf.transferService pushTransaction];
    } failure:^(id DAO, NSError *error) {
        NSLog(@"%@", error);
    }];
    
}

- (void)sellRam{
    self.sell_ram_abi_json_to_bin_request.action = ContractAction_SELLRAM;
    self.sell_ram_abi_json_to_bin_request.code = ContractName_TTMCIO;
    self.sell_ram_abi_json_to_bin_request.account = self.ttmcResourceResult.data.account_name;
    if (self.headerView.amountLabel.text.length > 6) {
        double bytes;
        bytes = [self.headerView.amountLabel.text substringToIndex:self.headerView.amountLabel.text.length-6].doubleValue;
        self.sell_ram_abi_json_to_bin_request.bytes = [NSNumber numberWithDouble:bytes];
    }
    WS(weakSelf);
    [self.sell_ram_abi_json_to_bin_request postOuterDataSuccess:^(id DAO, id data) {
#pragma mark -- [@"data"]
        NSLog(@"approve_abi_to_json_request_success: --binargs: %@",data[@"data"][@"binargs"] );
        AccountInfo *accountInfo = [[AccountsTableManager accountTable] selectAccountTableWithAccountName:weakSelf.ttmcResourceResult.data.account_name];
        if (!accountInfo) {
            [TOASTVIEW showWithText: NSLocalizedString(@"本地无此账号!", nil) ];
            return ;
        }
        weakSelf.transferService.available_keys = @[VALIDATE_STRING(accountInfo.account_owner_public_key) , VALIDATE_STRING(accountInfo.account_active_public_key)];
        weakSelf.transferService.action = ContractAction_SELLRAM;
        weakSelf.transferService.sender = weakSelf.ttmcResourceResult.data.account_name;
        weakSelf.transferService.code = ContractName_TTMCIO;
#pragma mark -- [@"data"]
        weakSelf.transferService.binargs = data[@"data"][@"binargs"];
        weakSelf.transferService.pushTransactionType = PushTransactionTypeTransfer;
        weakSelf.transferService.password = weakSelf.loginPasswordView.inputPasswordTF.text;
        [weakSelf.transferService pushTransaction];
    } failure:^(id DAO, NSError *error) {
        NSLog(@"%@", error);
    }];
    
}


// TransferServiceDelegate
extern NSString *TradeRamDidSuccessNotification;
- (void)pushTransactionDidFinish:(TTMCResourceResult *)result{
    if ([result.code isEqualToNumber:@0]) {
        [TOASTVIEW showWithText:NSLocalizedString(@"交易成功!", nil)];
        [[NSNotificationCenter defaultCenter] postNotificationName:TradeRamDidSuccessNotification object:nil];
        [self.navigationController popViewControllerAnimated: YES];
    }else{
        [TOASTVIEW showWithText: result.message];
    }
    [self removeLoginPasswordView];
}

- (void)removeLoginPasswordView{
    if (self.loginPasswordView) {
        [self.loginPasswordView removeFromSuperview];
        self.loginPasswordView = nil;
    }
}

-(void)leftBtnDidClick{
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}



@end
