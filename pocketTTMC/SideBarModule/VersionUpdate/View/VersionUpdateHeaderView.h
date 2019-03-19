//
//  VersionUpdateHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/18.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VersionUpdateModel.h"

@protocol VersionUpdateHeaderViewDelegate<NSObject>
- (void)versionIntroduceBtnDidClick:(UIButton *)sender;
- (void)checkNewVersionBtnDidClick:(UIButton *)sender;
@end

@interface VersionUpdateHeaderView : BaseView
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;

@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property(nonatomic, weak) id<VersionUpdateHeaderViewDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITextView *contentTextView;


@end
