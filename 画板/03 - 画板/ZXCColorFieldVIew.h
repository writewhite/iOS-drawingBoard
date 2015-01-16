//
//  ZXCColorFieldVIew.h
//  03 - 画板
//
//  Created by Mac Z on 14/11/6.
//  Copyright (c) 2014年 Mac Z. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZXCColorFieldVIew : UIView
@property (nonatomic,strong)UIColor *color;
@property (nonatomic ,assign) CGFloat width;

-(void)clearScreen;
-(void)undo;
@end
