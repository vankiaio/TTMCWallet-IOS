//
//  ResetAccountPermisionHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/11/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ResetAccountPermisionHeaderViewDelegate <NSObject>
- (void)resetAccountPermisionHeaderViewGeneratePrivateKeyBtnDidClick;
- (void)resetAccountPermisionHeaderViewConfirmBtnDidClick;

@end

@interface ResetAccountPermisionHeaderView : UIView

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property(nonatomic, weak) id<ResetAccountPermisionHeaderViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
