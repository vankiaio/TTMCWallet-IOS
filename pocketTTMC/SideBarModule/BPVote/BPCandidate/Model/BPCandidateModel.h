//
//  BPCandidateModel.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/6/9.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionModel.h"


@interface BPCandidateModel : OptionModel

@property(nonatomic , copy) NSString *owner;
@property(nonatomic , copy) NSString *total_votes;
@property(nonatomic , copy) NSString *url;
@property(nonatomic , copy) NSString *logo_256;
@property(nonatomic , assign) BOOL voted;

@end
