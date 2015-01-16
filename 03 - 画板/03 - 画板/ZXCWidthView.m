//
//  ZXCWidthView.m
//  03 - 画板
//
//  Created by Mac Z on 15/1/16.
//  Copyright (c) 2015年 Mac Z. All rights reserved.
//

#import "ZXCWidthView.h"

@implementation ZXCWidthView

- (IBAction)btnClick:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(widthView:width:)]) {
                
        [self.delegate widthView:self width:sender.tag];
    }
    self.hidden = YES;
}

+(instancetype)widthView
{
    
    ZXCWidthView *widthView = [[NSBundle  mainBundle]loadNibNamed:@"ZXCWidthView" owner:nil options:nil][0];
    
    return widthView;
}

@end
