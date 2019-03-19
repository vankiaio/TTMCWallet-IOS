//
//  ImportAccountWithoutAccountNameDoublePrivateKeyModeHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/11/19.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ImportAccountWithoutAccountNameDoublePrivateKeyModeHeaderViewDelegate <NSObject>
- (void)importAccountWithoutAccountNameDoublePrivateKeyModeHeaderViewConfirmBtnDidClick;

@end

@interface ImportAccountWithoutAccountNameDoublePrivateKeyModeHeaderView : UIView
@property(nonatomic, weak) id<ImportAccountWithoutAccountNameDoublePrivateKeyModeHeaderViewDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITextView *textView1;

@property (weak, nonatomic) IBOutlet UITextView *textView2;

@end

NS_ASSUME_NONNULL_END
