//
//  BBCreateAccountHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BBCreateAccountHeaderViewDelegate<NSObject>
- (void)createAccountUseTTMCPrivateKey;
@end


@interface BBCreateAccountHeaderView : UIView
@property(nonatomic, weak) id<BBCreateAccountHeaderViewDelegate> delegate;

@end
