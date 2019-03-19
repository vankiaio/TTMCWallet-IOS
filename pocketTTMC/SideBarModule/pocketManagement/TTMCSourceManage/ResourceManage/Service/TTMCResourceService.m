//
//  TTMCResourceService.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "TTMCResourceService.h"


@implementation TTMCResourceService

- (GetAccountRequest *)getAccountRequest{
    if (!_getAccountRequest) {
        _getAccountRequest = [[GetAccountRequest alloc] init];
    }
    return _getAccountRequest;
}
//
//- (TTMCResourceResult *)ttmcResourceResult{
//    if (!_ttmcResourceResult) {
//        _ttmcResourceResult = [[TTMCResourceResult alloc] init];
//    }
//    return _ttmcResourceResult;
//}


/**
 账号资产详情
 */
- (void)get_account:(CompleteBlock)complete{
    WS(weakSelf);
    
    [self.getAccountRequest postDataSuccess:^(id DAO, id data) {
        if ([data isKindOfClass:[NSDictionary class]]) {
            
            weakSelf.ttmcResourceResult = [TTMCResourceResult mj_objectWithKeyValues:data];
            
            if (![weakSelf.ttmcResourceResult.code isEqualToNumber:@0]) {
                [TOASTVIEW showWithText: VALIDATE_STRING(weakSelf.ttmcResourceResult.message)];
                return ;
            }
            
            TTMCResourceCellModel *cpu_model = [[TTMCResourceCellModel alloc] init];
            cpu_model.title = NSLocalizedString(@"cpu", nil);
            cpu_model.used = weakSelf.ttmcResourceResult.data.cpu_used;
            cpu_model.available = weakSelf.ttmcResourceResult.data.cpu_available;
            cpu_model.max = weakSelf.ttmcResourceResult.data.cpu_max;
            cpu_model.weight = weakSelf.ttmcResourceResult.data.cpu_weight;
            
            TTMCResourceCellModel *net_model = [[TTMCResourceCellModel alloc] init];
            net_model.title = NSLocalizedString(@"net", nil);
            net_model.used = weakSelf.ttmcResourceResult.data.net_used;
            net_model.available = weakSelf.ttmcResourceResult.data.net_available;
            net_model.max = weakSelf.ttmcResourceResult.data.net_max;
            net_model.weight = weakSelf.ttmcResourceResult.data.net_weight;
            
            weakSelf.dataSourceArray = [NSMutableArray arrayWithObjects:cpu_model, net_model, nil];
            complete(weakSelf.ttmcResourceResult, YES);
        }
    } failure:^(id DAO, NSError *error) {
        NSLog(@"%@", error);
        complete(nil, NO);
    }];
}


@end
