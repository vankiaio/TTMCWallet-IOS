//
//  ImportPocketHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/1/12.
//  Copyright © 2018年 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ImportPocketHeaderViewDelegate<NSObject>

- (void)importPocketBtnDidClick:(UIButton *)sender;
@end
@interface ImportPocketHeaderView : BaseView
@property (weak, nonatomic) IBOutlet UITextView *pocketTextView;
@property(nonatomic, weak) id<ImportPocketHeaderViewDelegate> delegate;
@end
