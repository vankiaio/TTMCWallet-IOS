//
//  WkDelegateController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/5.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@protocol WKDelegate <NSObject>

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message;

@end


@interface WkDelegateController : UIViewController<WKScriptMessageHandler>
@property (weak , nonatomic) id<WKDelegate> delegate;

@end
