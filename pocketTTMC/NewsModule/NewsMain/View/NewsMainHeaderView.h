//
//  NewsMainHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/9.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDCycleScrollView.h"
#import "Assest.h"
#import "ScrollMenuView.h"
#import "News.h"

@protocol NewsMainHeaderViewDelegate<NSObject>
- (void)menuScrollViewItemBtnDidClick:(UIButton *)sender;
- (void)newsMainHeaderViewBannerImageViewDidSelect:(News *)model;
@end

@interface NewsMainHeaderView : UIView

@property(nonatomic, weak) id<NewsMainHeaderViewDelegate> delegate;

/**
 轮播图
 */
@property(nonatomic, strong) SDCycleScrollView *scrollView;
@property(nonatomic , strong) ScrollMenuView *scrollMenuView;

- (void)updateViewWithAssestsArray:(NSArray<Assest *> *)assestsArray;

@property(nonatomic , strong) NSMutableArray *assestsArray;



- (void)updateBannerViewWithModelArr:(NSArray *)arr;
@end
