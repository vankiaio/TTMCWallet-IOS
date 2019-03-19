//
//  SliderVerifyView.h
//  22
//
//  Created by ttmcchain on 2017/12/14.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SliderVerifyViewDelegate<NSObject>
- (void)sliderVerifyDidSuccess;
@end

@interface SliderVerifyView : UIView

/**
 起点滑块
 */
@property(nonatomic, strong) UIImageView *orignalImg;

@property(nonatomic, weak) id<SliderVerifyViewDelegate> delegate;
@property(nonatomic, strong) UILabel *tipLabel;
@end
