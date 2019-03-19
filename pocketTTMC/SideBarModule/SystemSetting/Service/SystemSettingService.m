//
//  SystemSettingService.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/17.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "SystemSettingService.h"

@implementation SystemSettingService

- (NSDictionary *)dataSourceDictionary{
    if (!_dataSourceDictionary) {
        _dataSourceDictionary = @{
                                  @"firstSection" : @[NSLocalizedString(@"意见反馈", nil)]  ,
                                  @"secondSection" : @[NSLocalizedString(@"清空缓存", nil),NSLocalizedString(@"语言", nil), NSLocalizedString(@"法律条款与隐私政策", nil), NSLocalizedString(@"关于Pocket TTMC", nil)],
                                  @"thirdSection": @[NSLocalizedString(@"分享给好友", nil)]
                                  };
    }
    return _dataSourceDictionary;
}

-(void)buildDataSource:(CompleteBlock)complete{
    
    
    complete(self , YES);
}
@end
