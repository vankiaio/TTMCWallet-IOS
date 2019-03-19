//
//  RichListCell.m
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/26.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import "RichListCell.h"
#import "Follow.h"
#import "WalletAccount.h"
#import "AccountInfo.h"

@interface RichListCell()

@property(nonatomic, strong) UIImageView *avatarImg;
@property(nonatomic, strong) BaseLabel *titleLabel;

@end

@implementation RichListCell

- (UIImageView *)avatarImg{
    if (!_avatarImg) {
        _avatarImg = [[UIImageView alloc] init];
        _avatarImg.sd_cornerRadius = @(6);
    }
    return _avatarImg;
}

- (BaseLabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[BaseLabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:15];
    }
    return _titleLabel;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self.contentView addSubview:self.avatarImg];
        self.avatarImg.sd_layout.leftSpaceToView(self.contentView, 20).centerYEqualToView(self.contentView).widthIs(40).heightEqualToWidth();
        
        [self.contentView addSubview:self.titleLabel];
        self.titleLabel.sd_layout.leftSpaceToView(_avatarImg, 10).centerYEqualToView(_avatarImg).rightSpaceToView(self.contentView, MARGIN_20).heightIs(21);
    }
    return self;
}

-(void)setModel:(Follow *)model{
    _model = model;
    if ([model.followType isEqualToNumber:@1]) {
        _titleLabel.text = [NSString stringWithFormat: @"%@%@", VALIDATE_STRING(_model.displayName), NSLocalizedString(@"的钱包", nil)];
    }else if([model.followType isEqualToNumber:@2]){
        _titleLabel.text = _model.displayName;
    }
    [_avatarImg sd_setImageWithURL: String_To_URL(model.avatar) placeholderImage:[UIImage imageNamed:@"account_default_blue"]];
}

-(void)setWalletModel:(Follow *)walletModel{
    _titleLabel.text = [NSString stringWithFormat: @"%@%@", VALIDATE_STRING(walletModel.displayName), NSLocalizedString(@"的钱包", nil)];
    _titleLabel.text = walletModel.displayName;
    [_avatarImg sd_setImageWithURL: String_To_URL(walletModel.avatar) placeholderImage:[UIImage imageNamed:@"account_default_blue"]];
}

-(void)setWalletAccount:(WalletAccount *)walletAccount{
    _walletAccount = walletAccount;
    _titleLabel.text = walletAccount.ttmcAccountName;
    [_avatarImg sd_setImageWithURL: String_To_URL(walletAccount.ttmcAccountName) placeholderImage:[UIImage imageNamed:@"account_default_blue"]];

}

-(void)setAccountInfo:(AccountInfo *)accountInfo{
    _accountInfo = accountInfo;
    _titleLabel.text = accountInfo.account_name;
    [_avatarImg sd_setImageWithURL: String_To_URL(accountInfo.account_name) placeholderImage:[UIImage imageNamed:@"account_default_blue"]];
}

@end
