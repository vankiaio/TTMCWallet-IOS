//
//  GetTransactionByIdRequest.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/9/26.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface GetTransactionByIdRequest : BaseNetworkRequest


@property(nonatomic , copy) NSString *transactionId;

@end
