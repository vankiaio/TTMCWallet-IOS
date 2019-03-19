//
//  CandyMainCollectionViewCell.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CandyEquityModel.h"

@interface CandyMainCollectionViewCell : UICollectionViewCell

@property(nonatomic , strong) UILabel *titleLabel;
@property(nonatomic , strong) CandyEquityModel *model;
@end
