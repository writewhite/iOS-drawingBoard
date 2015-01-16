//
//  ZXCColorView.m
//  03 - 画板
//
//  Created by Mac Z on 14/11/7.
//  Copyright (c) 2014年 Mac Z. All rights reserved.
//

#import "ZXCColorView.h"

@implementation ZXCColorView

- (IBAction)btnClick:(UIButton *)sender
{

    if ([self.delegate respondsToSelector:@selector(colorView:color:)]) {
 
        [self.delegate colorView:self color:sender.backgroundColor];
       
    }
    self.hidden = YES;
    
}

+(instancetype)colorView{
    
    ZXCColorView *colorView = [[NSBundle  mainBundle]loadNibNamed:@"ZXCColorView" owner:nil options:nil][0];
    return colorView;
}


@end
