//
//  SocialModel.h
//  pocketTTMC
//
//  Created by ttmcchain on 30/03/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, SocialModelType) {
    SocialTypeQQ,
    SocialTypeWechat
};


@interface SocialModel : NSObject

/**
 昵称
 */
@property(nonatomic , copy) NSString *name;

/**
 头像地址
 */
@property(nonatomic , copy) NSString *avatar;

/**
 openid
 */
@property(nonatomic , copy) NSString *openid;


/**
 unionid
 */
@property(nonatomic , copy) NSString *unionid;




/**
   qq 微信 
 */
@property(nonatomic , assign) SocialModelType socialModelType;


@end
