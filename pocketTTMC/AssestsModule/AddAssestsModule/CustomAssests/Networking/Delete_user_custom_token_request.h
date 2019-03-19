//
//  Delete_user_custom_token_request.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/7/19.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseNetworkRequest.h"

@interface Delete_user_custom_token_request : BaseNetworkRequest
@property(nonatomic, copy) NSString *accountName;

@property(nonatomic, copy) NSString *recommandToken_ID;
@end
