//
//  ZXCColorFieldVIew.m
//  03 - 画板
//
//  Created by Mac Z on 14/11/6.
//  Copyright (c) 2014年 Mac Z. All rights reserved.
//

#import "ZXCColorFieldVIew.h"
#import "ZXCPath.h"
@interface ZXCColorFieldVIew()
@property (nonatomic,strong)ZXCPath *path;
@property (nonatomic,strong)NSMutableArray *paths;
@end
@implementation ZXCColorFieldVIew


-(NSMutableArray *)paths{
    
    if (!_paths) {
        _paths = [NSMutableArray array];
    }
    return _paths   ;
}

-(void)awakeFromNib{
    _width =2;

}
-(CGPoint )pointWith:(NSSet *)touches
{
    UITouch *touch = [touches anyObject];
    return [touch locationInView:self];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    ZXCPath *path = [ZXCPath pathWithCorlor:self.color width:self.width];
    _path = path;
    [self.paths addObject:path];
    [path moveToPoint:[self pointWith:touches]];
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_path addLineToPoint:[self pointWith:touches]];

    [self setNeedsDisplay];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self setNeedsDisplay];
    
}
- (void)drawRect:(CGRect)rect
{
//    此处一定要调用ctx的这两个方法 因为自定义的时候一定要调用上下文；
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    UIGraphicsPushContext(ctx);
    
    if (self.paths.count == 0) return;
    for (ZXCPath *path in self.paths) {
        [path setLineJoinStyle:kCGLineJoinRound];
        [path.color set];
        [path setLineCapStyle:kCGLineCapRound];
        [path stroke];
    }

}
-(void)clearScreen{
    
    self.paths = nil;
    [self setNeedsDisplay];
}
-(void)undo{
    [self.paths removeLastObject];
    [self setNeedsDisplay];
}
@end
