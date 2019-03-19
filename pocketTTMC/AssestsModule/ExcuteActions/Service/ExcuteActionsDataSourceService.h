//
//  ExcuteActionsDataSourceService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/10.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "NotifyDappServerResult.h"

@interface ExcuteActionsDataSourceService : BaseService

@property(nonatomic , copy) NSString *actionsResultDict;



- (void)notifyDappServerExcuteActionsResultWithNotifyDappServerResult:(NotifyDappServerResult *)result;

@end
