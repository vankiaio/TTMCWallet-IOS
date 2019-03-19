//
//  RichlistHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/4.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RichlistHeaderView : BaseView
@property(nonatomic, copy) void (^onSearchFriendsBlock)(void);
@property(nonatomic, copy) void (^onEnterPriseBlock)(void);
@property(nonatomic, copy) void (^onPeListBlock)(void);



@end
