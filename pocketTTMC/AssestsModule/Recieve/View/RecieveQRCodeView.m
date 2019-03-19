//
//  RecieveQRCodeView.m
//  pocketTTMC
//
//  Created by ttmcchain on 2017/12/7.
//  Copyright © 2017年 ttmcchain. All rights reserved.
//

#import "RecieveQRCodeView.h"
#import "SocialSharePanelView.h"
#import "SocialShareModel.h"

@interface RecieveQRCodeView()<UIGestureRecognizerDelegate, SocialSharePanelViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *bottomBackgroundView;
@property (weak, nonatomic) IBOutlet UIView *upBackgroundView;
@property(nonatomic , strong) SocialSharePanelView *socialSharePanelView;
@property(nonatomic , strong) NSArray *platformNameArr;
@end

@implementation RecieveQRCodeView

- (SocialSharePanelView *)socialSharePanelView{
    if (!_socialSharePanelView) {
        _socialSharePanelView = [[SocialSharePanelView alloc] init];
        _socialSharePanelView.backgroundColor = HEXCOLOR(0xFFFFFF);
        _socialSharePanelView.delegate = self;
        NSMutableArray *modelArr = [NSMutableArray array];
        NSArray *titleArr = @[NSLocalizedString(@"微信好友", nil),NSLocalizedString(@"朋友圈", nil)]; //NSLocalizedString(@"QQ好友", nil), NSLocalizedString(@"QQ空间", nil)
        for (int i = 0; i < titleArr.count; i++) {
            SocialShareModel *model = [[SocialShareModel alloc] init];
            model.platformName = titleArr[i];
            model.platformImage = self.platformNameArr[i];
            [modelArr addObject:model];
        }
        self.socialSharePanelView.labelTopSpace = 11.5;
        self.socialSharePanelView.frame = self.bottomBackgroundView.bounds;
        [_socialSharePanelView updateViewWithArray:modelArr];
    }
    return _socialSharePanelView;
}

- (NSArray *)platformNameArr{
    if (!_platformNameArr) {
        _platformNameArr = @[@"wechat_friends",@"wechat_moments", @"qq_friends", @"qq_Zone"];
    }
    return _platformNameArr;
}


- (void)awakeFromNib{
    [super awakeFromNib];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    tap.delegate = self;
    [self addGestureRecognizer:tap];
    [self.bottomBackgroundView addSubview:self.socialSharePanelView];
}

// SocialSharePanelViewDelegate
- (void)SocialSharePanelViewDidTap:(UITapGestureRecognizer *)sender{
    NSString *platformName = self.platformNameArr[sender.view.tag-1000];
    NSLog(@"%@", platformName);
    
    if ([platformName isEqualToString:@"wechat_friends"]) {
        [[SocialManager socialManager] wechatShareImageToScene:0 withImage:[UIImage convertViewToImage:self.upBackgroundView]];
    }else if ([platformName isEqualToString:@"wechat_moments"]){
        [[SocialManager socialManager] wechatShareImageToScene:1 withImage:[UIImage convertViewToImage:self.upBackgroundView]];
    }else if ([platformName isEqualToString:@"qq_friends"]){
        [[SocialManager socialManager] qqShareToScene:0 withShareImage:[UIImage convertViewToImage:self.upBackgroundView]];
    }else if ([platformName isEqualToString:@"qq_Zone"]){
        [[SocialManager socialManager] qqShareToScene:1 withShareImage:[UIImage convertViewToImage:self.upBackgroundView]];
    }
}


- (void)dismiss{
    [self removeFromSuperview];
}

-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
    if ([touch.view isEqual:self.upBackgroundView] || [touch.view isEqual:self.bottomBackgroundView]) {
        return NO;
        
    }else{
        return YES;
    }
}
- (IBAction)shareToWeChat:(UIButton *)sender {
    NSLog(@"%s", __FUNCTION__);
}
- (IBAction)shareToQQ:(UIButton *)sender {
    NSLog(@"%s", __FUNCTION__);
}

@end
