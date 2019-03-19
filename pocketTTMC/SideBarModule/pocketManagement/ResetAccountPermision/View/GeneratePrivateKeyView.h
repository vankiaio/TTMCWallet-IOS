//
//  GeneratePrivateKeyView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/11/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol GeneratePrivateKeyViewDelegate <NSObject>



@end

@interface GeneratePrivateKeyView : UIView
@property(nonatomic, weak) id<GeneratePrivateKeyViewDelegate> delegate;
@property(nonatomic , strong) OptionModel *model;
@property(nonatomic , strong) UITextView *contentTextView;

@end

NS_ASSUME_NONNULL_END
