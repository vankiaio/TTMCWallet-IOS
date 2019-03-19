//
//  RichListRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/26.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import "RichListRequest.h"

@implementation RichListRequest

- (NSString *)requestUrlPath{
     return [NSString stringWithFormat:@"%@/follow_list", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    return @{@"uid" : VALIDATE_STRING(self.uid)};
}

@end
