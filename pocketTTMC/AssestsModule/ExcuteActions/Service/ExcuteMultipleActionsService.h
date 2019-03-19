//
//  ExcuteMultipleActionsService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/8/13.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "ExcuteActions.h"
#import "TransactionResult.h"
#import "ScatterResult_type_requestSignature.h"


@protocol ExcuteMultipleActionsServiceDelegate<NSObject>
- (void)excuteMultipleActionsDidFinish:(TransactionResult *)result;
@end



@interface ExcuteMultipleActionsService : BaseService

@property(nonatomic, weak) id<ExcuteMultipleActionsServiceDelegate> delegate;

// excuteMultipleActions
- (void)excuteMultipleActionsWithSender:(NSString *)sender andExcuteActionsArray:(NSArray <ExcuteActions *>*)excuteActionsArray andAvailable_keysArray:(NSArray *)available_keysArray andPassword:(NSString *)password;


// excuteMultipleActions -- For Scatter-JS
- (NSString *)excuteMultipleActionsForScatterWithScatterResult:(ScatterResult_type_requestSignature *)scatterResult andAvailable_keysArray:(NSArray *)available_keysArray andPassword:(NSString *)password;

- (NSString *)excuteSignatureMessageForScatterWithActor:(NSString *)actor signatureMessage:(NSString *)messageStr andPassword:(NSString *)password;



@property(nonatomic, copy) NSString *ref_block_num;

@property(nonatomic , copy) NSString *tag;


@end
