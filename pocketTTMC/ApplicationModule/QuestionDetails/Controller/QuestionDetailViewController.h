//
//  QuestionDetailViewController.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/2/5.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Question;



@interface QuestionDetailViewController : UIViewController
@property(nonatomic, strong) Question *question;
@property(nonatomic, strong) NSString *choosedAccountName;
@end
