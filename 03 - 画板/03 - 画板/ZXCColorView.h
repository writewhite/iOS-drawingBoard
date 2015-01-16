//
//  ZXCColorView.h
//  03 - 画板
//
//  Created by Mac Z on 14/11/7.
//  Copyright (c) 2014年 Mac Z. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZXCColorView;
@protocol ZXCColorViewDelegate <NSObject>
@optional
-(void)colorView:(ZXCColorView *) colorView color:(UIColor *)color;

@end
@interface ZXCColorView : UIView
@property (nonatomic,strong)UIColor *color;
@property (nonatomic,weak)id<ZXCColorViewDelegate> delegate;
+(instancetype)colorView;

@end
