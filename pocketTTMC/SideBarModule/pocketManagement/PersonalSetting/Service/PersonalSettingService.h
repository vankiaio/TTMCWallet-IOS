//
//  PersonalSettingService.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/26.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import "BaseService.h"
#import "UploadWalletAvatarImageRequest.h"
#import "UpdateUserNameRequest.h"

@interface PersonalSettingService : BaseService
@property(nonatomic, strong) UploadWalletAvatarImageRequest *uploadWalletAvatarImageRequest;

@property(nonatomic, strong) UpdateUserNameRequest *updateUserNameRequest;



@end
