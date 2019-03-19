//
//  CandyTaskModel.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "CandyTaskModel.h"

@implementation CandyTaskModel
+(NSDictionary *)mj_replacedKeyFromPropertyName{
     return @{@"task_id" : @"candyTask.id" ,
              @"title" : @"candyTask.title",
              @"task_description" : @"candyTask.description",
              @"avatar" : @"candyTask.avatar",
              @"scoreNum" : @"candyTask.scoreNum",
              @"taskUrl" : @"candyTask.taskUrl",
              @"createTime" : @"candyTask.createTime",
              @"updateTime" : @"candyTask.updateTime",
              
              };
}
@end
