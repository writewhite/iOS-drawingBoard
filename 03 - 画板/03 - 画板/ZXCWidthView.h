//
//  ZXCWidthView.h
//  03 - 画板
//
//  Created by Mac Z on 15/1/16.
//  Copyright (c) 2015年 Mac Z. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZXCWidthView;

@protocol ZXCWidthViewDelegate <NSObject>
@optional

-(void)widthView:(ZXCWidthView *) widthView width:(CGFloat )width;

@end

@interface ZXCWidthView : UIView

@property (nonatomic,assign )CGFloat width;

@property (nonatomic,weak)id<ZXCWidthViewDelegate> delegate;

+(instancetype)widthView;

@end
