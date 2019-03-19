//
//  RtfBrowserViewController.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/25.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "RtfBrowserViewController.h"

@interface RtfBrowserViewController ()
@property(nonatomic , strong) UIWebView *webView;
@end

@implementation RtfBrowserViewController
- (UIWebView *)webView{
    if (!_webView) {
        _webView = [[UIWebView alloc] init];
        _webView.frame = CGRectMake(0, NAVIGATIONBAR_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-NAVIGATIONBAR_HEIGHT);
    }
    return _webView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.webView];
    self.view.lee_theme.LeeConfigBackgroundColor(@"baseView_background_color");
    self.navigationController.navigationBar.lee_theme.LeeConfigTintColor(@"common_font_color_1");
    NSURL *rtfUrl = [[NSBundle mainBundle] URLForResource:self.rtfFileName withExtension:@"rtf"];
    NSURLRequest *request = [NSURLRequest requestWithURL:rtfUrl];
    [_webView loadRequest:request];
}

@end
