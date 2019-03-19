//
//  UnbindQQRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 30/03/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "UnbindQQRequest.h"

@implementation UnbindQQRequest
-(NSString *)requestUrlPath{
    return [NSString stringWithFormat:@"%@/user/unbindQQ", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    return @{@"uid" : VALIDATE_STRING(self.uid)
             };
}
@end
