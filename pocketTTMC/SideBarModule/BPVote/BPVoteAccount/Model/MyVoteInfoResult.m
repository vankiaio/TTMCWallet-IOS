//
//  MyVoteInfoResult.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/12.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "MyVoteInfoResult.h"

@implementation MyVoteInfoResult

+(NSDictionary *)mj_replacedKeyFromPropertyName{
    return @{
             @"info" : @"data.info",
             @"producers" : @"data.producers",
             };
}

+(NSDictionary *)mj_objectClassInArray{
    return @{@"producers" : @"BPCandidateModel"};
}


@end

