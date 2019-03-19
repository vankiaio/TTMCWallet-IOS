//
//  BBLoginHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 14/05/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BBLoginHeaderViewDelegate<NSObject>
- (void)changeModeToSocialMode;
@end


@interface BBLoginHeaderView : BaseView
@property(nonatomic, weak) id<BBLoginHeaderViewDelegate> delegate;

@end
