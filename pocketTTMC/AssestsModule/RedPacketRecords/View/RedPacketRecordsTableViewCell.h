//
//  RedPacketRecordsTableViewCell.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/27.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseTableViewCell.h"
#import "RedPacketRecord.h"

@interface RedPacketRecordsTableViewCell : BaseTableViewCell

@property(nonatomic , strong) RedPacketRecord *model;

@end
