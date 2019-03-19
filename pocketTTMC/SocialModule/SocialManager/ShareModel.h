//
//  ShareModel.h
//  pocketTTMC
//
//  Created by ttmcchain on 18/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShareModel : NSObject
@property(nonatomic , strong) NSString *type;
@property(nonatomic , strong) UIImage *image;
@property(nonatomic , copy) NSString *title;
@property(nonatomic , copy) NSString *detailDescription;
@property(nonatomic , copy) NSString *imageName;
@property(nonatomic , copy) NSString *webPageUrl;
@end
