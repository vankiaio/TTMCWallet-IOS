//
//  CandyScoreRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/24.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "CandyScoreRequest.h"

@implementation CandyScoreRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/get_candy_score/%@", REQUEST_CANDYSYSTEM_BASEURL, self.uid];
}

@end
