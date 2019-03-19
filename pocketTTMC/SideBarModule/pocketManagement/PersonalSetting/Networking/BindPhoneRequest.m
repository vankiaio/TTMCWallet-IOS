//
//  BindPhoneRequest.m
//  pocketTTMC
//
//  Created by ttmcchain on 30/03/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BindPhoneRequest.h"

@implementation BindPhoneRequest
-(NSString *)requestUrlPath{
//    return @"http://10.0.0.34:8080/api_oc_personal/v1.0.0/user/bind_phone_number";
    return [NSString stringWithFormat:@"%@/user/bind_phone_number", REQUEST_PERSONAL_BASEURL];
}

-(id)parameters{
    return @{@"name" : VALIDATE_STRING(self.name),
             @"avatar" : VALIDATE_STRING(self.avatar),
             @"openid" : VALIDATE_STRING(self.openid),
             @"phoneNum" : VALIDATE_STRING(self.phoneNum),
             @"type" : VALIDATE_STRING(self.type),
             @"code" : VALIDATE_STRING(self.code)
             };
}
@end
