//
//  TTMCMappingImportAccountHeaderView.h
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseView.h"

@protocol TTMCMappingImportAccountHeaderViewDelegate<NSObject>
- (void)importTTMCMappingAccountBtnDidClick;
@end


@interface TTMCMappingImportAccountHeaderView : BaseView
@property(nonatomic, weak) id<TTMCMappingImportAccountHeaderViewDelegate> delegate;


@property (weak, nonatomic) IBOutlet UITextField *privateKeyTF;

@end
