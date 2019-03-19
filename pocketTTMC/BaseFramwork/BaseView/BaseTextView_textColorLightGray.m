//
//  BaseTextView_textColorLightGray.m
//  pocketTTMC
//
//  Created by ttmcchain on 2018/10/31.
//  Copyright © 2018 ttmcchain. All rights reserved.
//

#import "BaseTextView_textColorLightGray.h"

@implementation BaseTextView_textColorLightGray

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.lee_theme.LeeConfigBackgroundColor(@"baseView_background_color")
        .LeeAddTextColor(SOCIAL_MODE, HEXCOLOR(0x999999))
        .LeeAddTextColor(BLACKBOX_MODE, RGBA(255, 255, 255, 0.4));
        
        if (LEETHEME_CURRENTTHEME_IS_SOCAIL_MODE) {
            self.placeholderColor = HEXCOLOR(0xDDDDDD);
            
        }else if (LEETHEME_CURRENTTHEME_IS_BLACKBOX_MODE){
            self.placeholderColor = HEX_RGB_Alpha(0xFFFFFF, 0.4);
            
        }
    }
    return self;
}

-(void)awakeFromNib{
    [super awakeFromNib];
    self.lee_theme.LeeConfigBackgroundColor(@"baseView_background_color")
    .LeeAddTextColor(SOCIAL_MODE, HEXCOLOR(0x999999))
    .LeeAddTextColor(BLACKBOX_MODE, RGBA(255, 255, 255, 0.4));
    
    if (LEETHEME_CURRENTTHEME_IS_SOCAIL_MODE) {
        self.placeholderColor = HEXCOLOR(0xDDDDDD);
        
    }else if (LEETHEME_CURRENTTHEME_IS_BLACKBOX_MODE){
        self.placeholderColor = HEX_RGB_Alpha(0xFFFFFF, 0.4);
        
    }
}


@end
