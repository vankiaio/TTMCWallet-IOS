//
//  QuestionListTableViewCell.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/5.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Question.h"

@interface QuestionListTableViewCell : UITableViewCell
@property(nonatomic, strong) Question *model;
@end
