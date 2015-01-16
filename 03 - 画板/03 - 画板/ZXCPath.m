//
//  ZXCPath.m
//  03 - 画板
//
//  Created by Mac Z on 14/11/6.
//  Copyright (c) 2014年 Mac Z. All rights reserved.
//

#import "ZXCPath.h"
@interface ZXCPath()

@end
@implementation ZXCPath
+(instancetype)pathWithCorlor:(UIColor *)color width:(CGFloat )width{

    ZXCPath *path = [[self alloc]init];
    path.lineWidth = width;
    path.color = color;
    [path stroke];
    return path;
    
}

@end
