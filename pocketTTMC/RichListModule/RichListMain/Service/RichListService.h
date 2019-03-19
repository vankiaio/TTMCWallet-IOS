//
//  RichListService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/1.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "RichListRequest.h"
#import "GetAccountRequest.h"

@interface RichListService : BaseService

@property(nonatomic, strong) NSMutableDictionary *dataDictionary;
@property(nonatomic, strong) NSMutableArray *keysArray;


@property(nonatomic, strong) RichListRequest *richListRequest;

@property(nonatomic, strong) GetAccountRequest *getAccountRequest;

@end
