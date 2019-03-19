//
//  CustomNavigationView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/11/28.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomNavigationView : UIView


// 原始的 导航栏
@property(nonatomic, strong) UIView *originNavView;

@property(nonatomic, strong) UIImageView *titleImg;

@property(nonatomic, strong) UIButton *leftBtn;
// 
@property(nonatomic, strong) UIButton *rightBtn1;
//
@property(nonatomic, strong) UIButton *rightBtn2;

@property(nonatomic, copy) void (^leftBtnDidClickBlock)(void);
@property(nonatomic, copy) void (^rightBtn1DidClickBlock)(void);
@property(nonatomic, copy) void (^rightBtn2DidClickBlock)(void);



// 滑动后的导航栏
@property(nonatomic, strong) UIView *changedNavView;
// 转账
@property(nonatomic, strong) UIButton *changedBtn1;
// 收款
@property(nonatomic, strong) UIButton *changedBtn2;
// 红包
@property(nonatomic, strong) UIButton *changedBtn3;

@property(nonatomic, copy) void (^changedBtn1DidClickBlock)(void);
@property(nonatomic, copy) void (^changedBtn2DidClickBlock)(void);
@property(nonatomic, copy) void (^changedBtn3DidClickBlock)(void);

@end
