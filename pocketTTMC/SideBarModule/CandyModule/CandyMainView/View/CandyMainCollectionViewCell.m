//
//  CandyMainCollectionViewCell.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/5/21.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "CandyMainCollectionViewCell.h"

@interface CandyMainCollectionViewCell()
@property(nonatomic , strong) UIImageView *img;
@end


@implementation CandyMainCollectionViewCell

- (UIImageView *)img{
    if (!_img) {
        _img = [[UIImageView alloc] init];
        _img.contentMode = UIViewContentModeScaleAspectFill;
    }
    return _img;
}

- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.font = [UIFont systemFontOfSize:13];
        _titleLabel.textColor = HEXCOLOR(0x2A2A2A);
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.img];
        self.img.sd_layout.leftSpaceToView(self.contentView, 5).rightSpaceToView(self.contentView, 5).topSpaceToView(self.contentView, MARGIN_20).heightIs(80);
        
        [self.contentView addSubview:self.titleLabel];
        self.titleLabel.sd_layout.leftSpaceToView(self.contentView, 0).rightSpaceToView(self.contentView, 0).topSpaceToView(_img, 15).heightIs(13);
    }
    return self;
}

-(void)setModel:(CandyEquityModel *)model{
    [self.img sd_setImageWithURL:String_To_URL(model.avatar) placeholderImage:[UIImage imageNamed:@"account_default_blue"]];
    self.titleLabel.text = model.title;
}

@end
