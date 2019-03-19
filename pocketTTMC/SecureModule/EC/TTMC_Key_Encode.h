//
//  TTMC_Key_Encode.h
//  wif_test
//
//  Created by ttmcchain on 2018/3/14.
//  Copyright © 2018年 宋赓. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTMC_Key_Encode : NSObject
/**
 validate wif format
 */
+ (BOOL)validateWif:(NSString *)wif;

/**
 getRandomBytesDataWithWif
 */
+ (NSData*)getRandomBytesDataWithWif:(NSString *)wif;

/**
 wif_with_random_bytes_data
 @param random_bytesData random_bytesData
 @return wif
 */
+ (NSString *)wif_with_random_bytes_data:(NSData *)random_bytesData;

/**
 ttmc_publicKey_with_wif
 
 @param wif wif
 @return ttmc_publicKey
 */
+ (NSString *)ttmc_publicKey_with_wif:(NSString *)wif;



/**
 encode uecc_publicKey --> ttmc_PublicKey
 @param uecc_publicKey_bytes_data uecc_publicKey_bytes_data
 @return ttmc_PublicKey
 */
+ (NSString *)encode_ttmc_PublicKey_with_uecc_publicKey_bytes_data:(NSData *)uecc_publicKey_bytes_data;


/**
 decode ttmc_PublicKey --> uecc_publicKey_bytes_data
 @param ttmc_publicKey uecc_publicKey_bytes_data
 @return uecc_publicKey_bytes_data
 */
+ (NSData *)decode_ttmc_publicKey:(NSString *)ttmc_publicKey;




@end

