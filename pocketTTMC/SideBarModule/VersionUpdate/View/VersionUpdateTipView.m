//
//  VersionUpdateTipView.m
//  pocketTTMC
//
//  Created by ttmcchain on 19/04/2018.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "VersionUpdateTipView.h"

@interface VersionUpdateTipView()<UIGestureRecognizerDelegate>
@property(nonatomic , strong) UIView *alphaBackgroundView;// black alpha 0.5
@property(nonatomic , strong) UIView *contentBackgroundView;
@property(nonatomic , strong) UITextView *contentTextView;
@property(nonatomic , strong) UIImageView *avatarImg;
@property(nonatomic , strong) UILabel *titleLabel;
@property(nonatomic , strong) UILabel *versionNumberLabel;
@property(nonatomic , strong) UIView *lineView;
@property(nonatomic , strong) UIButton *skipBtn;
@property(nonatomic , strong) UIButton *updateBtn;
@end


@implementation VersionUpdateTipView

- (UIView *)alphaBackgroundView{
    if (!_alphaBackgroundView) {
        _alphaBackgroundView = [[UIView alloc] init];
        _alphaBackgroundView.backgroundColor = [UIColor blackColor];
        _alphaBackgroundView.alpha = 0.5;
    }
    return _alphaBackgroundView;
}

- (UIView *)contentBackgroundView{
    if (!_contentBackgroundView) {
        _contentBackgroundView = [[UIView alloc] init];
        _contentBackgroundView.backgroundColor = HEXCOLOR(0xFFFFFF);
        _contentBackgroundView.layer.masksToBounds = YES;
        _contentBackgroundView.layer.cornerRadius = 8;
    }
    return _contentBackgroundView;
}

- (UITextView *)contentTextView{
    if (!_contentTextView) {
        _contentTextView = [[UITextView alloc] init];
        _contentTextView.font = [UIFont systemFontOfSize:14];
        _contentTextView.textColor = HEXCOLOR(0x999999);
        _contentTextView.editable =NO;
    }
    return _contentTextView;
}

- (UIImageView *)avatarImg{
    if (!_avatarImg) {
        _avatarImg = [[UIImageView alloc] init];
        _avatarImg.image = [UIImage imageNamed:@"versionUpdate-pic"];
    }
    return _avatarImg;
}

- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.text = NSLocalizedString(@"发现新版本", nil);
        _titleLabel.font = [UIFont systemFontOfSize:17];
        _titleLabel.textColor = HEXCOLOR(0x0080FF);
        _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}

- (UILabel *)versionNumberLabel{
    if (!_versionNumberLabel) {
        _versionNumberLabel = [[UILabel alloc] init];
        _versionNumberLabel.font = [UIFont systemFontOfSize:12];
        _versionNumberLabel.textColor = HEXCOLOR(0x999999);
        _versionNumberLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _versionNumberLabel;
}

- (UIView *)lineView{
    if (!_lineView) {
        _lineView = [[UIView alloc] init];
        _lineView.backgroundColor = HEXCOLOR(0xEEEEEE);
    }
    return _lineView;
}

- (UIButton *)skipBtn{
    if (!_skipBtn) {
        _skipBtn = [[UIButton alloc] init];
        [_skipBtn setTitle:NSLocalizedString(@"跳过", nil)forState:(UIControlStateNormal)];
        [_skipBtn setTitleColor:HEXCOLOR(0x999999) forState:(UIControlStateNormal)];
        [_skipBtn setBackgroundColor:HEXCOLOR(0xFFFFFF)];
        _skipBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        [_skipBtn addTarget:self action:@selector(skipBtnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _skipBtn;
}

- (UIButton *)updateBtn{
    if (!_updateBtn) {
        _updateBtn = [[UIButton alloc] init];
        [_updateBtn setTitle:NSLocalizedString(@"立即更新", nil)forState:(UIControlStateNormal)];
        [_updateBtn setTitleColor:HEXCOLOR(0xFFFFFF) forState:(UIControlStateNormal)];
        [_updateBtn setBackgroundColor:HEXCOLOR(0x4D7BFE)];
        _updateBtn.sd_cornerRadius =@4;
        _updateBtn.titleLabel.font = [UIFont systemFontOfSize:16];
        [_updateBtn addTarget:self action:@selector(updateBtnClick:) forControlEvents:(UIControlEventTouchUpInside)];
    }
    return _updateBtn;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
        tap.delegate = self;
        [self addGestureRecognizer:tap];
        
        self.alphaBackgroundView.frame = frame;
        [self addSubview:self.alphaBackgroundView];
    }
    return self;
}

-(void)setModel:(VersionUpdateModel *)model{
    CGFloat contentBackgroundViewHeight = 270;
    [self addSubview:self.contentBackgroundView];
    
    NSDictionary *attributes = @{
                                 NSFontAttributeName:[UIFont systemFontOfSize:14],
                                 NSForegroundColorAttributeName:HEXCOLOR(0x999999)
                                 };
    CGSize detailContentSize = [NSObject getStringRectInTextViewWithString:model.versionDetail InTextView:self.contentTextView withAttributesDict:attributes];
    self.contentBackgroundView.sd_layout.centerXEqualToView(self).centerYEqualToView(self).widthIs(contentBackgroundViewHeight);
    
    [self.contentBackgroundView addSubview:self.avatarImg];
    self.avatarImg.sd_layout.topSpaceToView(self.contentBackgroundView, 0).leftSpaceToView(self.contentBackgroundView, 0).rightSpaceToView(self.contentBackgroundView, 0).heightIs(110);
    
    [self.contentBackgroundView addSubview:self.titleLabel];
    self.titleLabel.sd_layout.centerXEqualToView(self.contentBackgroundView).topSpaceToView(self.avatarImg, MARGIN_20).heightIs(24).leftEqualToView(self.contentBackgroundView).rightEqualToView(self.contentBackgroundView);
    
    [self.contentBackgroundView addSubview:self.versionNumberLabel];
    self.versionNumberLabel.sd_layout.centerXEqualToView(self.contentBackgroundView).topSpaceToView(self.titleLabel, 2).heightIs(17).leftEqualToView(self.contentBackgroundView).rightEqualToView(self.contentBackgroundView);
    
    [self.contentBackgroundView addSubview:self.contentTextView];
    self.contentTextView.sd_layout.centerXEqualToView(self.contentBackgroundView).topSpaceToView(self.versionNumberLabel, MARGIN_10).heightIs(detailContentSize.height).leftSpaceToView(self.contentBackgroundView, MARGIN_20).rightSpaceToView(self.contentBackgroundView, MARGIN_20);
    
//    [self.contentBackgroundView addSubview:self.lineView];
//    self.lineView.sd_layout.leftEqualToView(self.contentBackgroundView).rightEqualToView(self.contentBackgroundView).topSpaceToView(self.contentTextView, 22).heightIs(DEFAULT_LINE_HEIGHT);
    
    [self.contentBackgroundView addSubview:self.updateBtn];
    self.updateBtn.sd_layout.topSpaceToView(self.contentTextView, 27).leftSpaceToView(self.contentBackgroundView, MARGIN_20).rightSpaceToView(self.contentBackgroundView, MARGIN_20).heightIs(39);
    
    [self.contentBackgroundView addSubview:self.skipBtn];
    self.skipBtn.sd_layout.topSpaceToView(self.updateBtn, 5).leftSpaceToView(self.contentBackgroundView, MARGIN_20).rightSpaceToView(self.contentBackgroundView, MARGIN_20).heightIs(39);
    
    self.versionNumberLabel.text = model.versionName;
    self.contentTextView.text = model.versionDetail;
    
    [self.contentBackgroundView setupAutoHeightWithBottomView: self.skipBtn bottomMargin: 0];
}

- (void)skipBtnClick:(UIButton *)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(skipBtnDidClick:)]) {
        [self.delegate skipBtnDidClick:sender];
    }
}

- (void)updateBtnClick:(UIButton *)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(updateBtnDidClick:)]) {
        [self.delegate updateBtnDidClick:sender];
    }
}

- (void)dismiss{
    [self removeFromSuperview];
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    if ([touch.view isEqual:self.contentBackgroundView]) {
        return NO;
    }else{
        return YES;
    }
}
@end
