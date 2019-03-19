//
//  TtmcByteWriter.h
//  啊啊啊啊啊啊
//
//  Created by ttmcchain on 2018/3/2.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TypeChainId.h"
#import "NSObject+Extension.h"

@interface TtmcByteWriter : NSObject

- (instancetype)initWithCapacity:(int) capacity ;

- (void)ensureCapacity:(int)capacity ;

- (void)put:(Byte)b ;

- (void)putShortLE:(short)value ;

- (void)putIntLE:(int)value ;

- (void)putLongLE:(long)value ;

- (void)putBytes:(NSData *)value ;

- (NSData *)toBytes ;

- (int)length ;

- (void)putString:(NSString *)value ;

- (void)putCollection:(NSArray *)collection ;

- (void)putVariableUInt:(long)val ;


+ (NSData *)getBytesForSignature:(TypeChainId *)chainId andParams:(NSDictionary *)paramsDic andCapacity:(int)capacity;



// ExcuteMultipleActions
+ (NSData *)getBytesForSignatureExcuteMultipleActions:(TypeChainId *)chainId andParams:(NSDictionary *)paramsDic andCapacity:(int)capacity;




@end