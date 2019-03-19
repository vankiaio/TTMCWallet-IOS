//
//  QuestionsListResult.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/5.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class QuestionListDetailResult;
@interface QuestionsListResult : NSObject
@property(nonatomic, strong) NSNumber *code;
@property(nonatomic, strong) NSString *msg;
@property(nonatomic, strong) QuestionListDetailResult *data;
@end
