//
//  ZXCViewController.m
//  03 - 画板
//
//  Created by Mac Z on 14/11/6.
//  Copyright (c) 2014年 Mac Z. All rights reserved.
//

#import "ZXCViewController.h"
#import "ZXCColorFieldVIew.h"
#import "ZXCPath.h"
#import "ZXCColorView.h"
#import "ZXCWidthView.h"

@interface ZXCViewController ()<ZXCColorViewDelegate,ZXCWidthViewDelegate >

@property (strong, nonatomic) IBOutlet ZXCColorFieldVIew *colorFieldView;
@property (nonatomic,weak)IBOutlet UIButton *btn;
@property (nonatomic,weak) ZXCColorView *colorView;
@property (nonatomic,weak) ZXCWidthView *widthView;

@property (nonatomic,assign) CGFloat width;

@property (nonatomic,getter=isSelected ) BOOL selected   ;

@property (nonatomic,strong)ZXCPath *path;

- (IBAction)clearScreen;
- (IBAction)undo;
- (IBAction)save;
- (IBAction)color:(UIButton *)sender;
- (IBAction)width:(UIButton *)sender;
@end

@implementation ZXCViewController

-(CGFloat)width{
    if (!_width) {
        _width = 2;
    }
    return _width;
}

-(ZXCWidthView *)widthView{
    
    if (!_widthView) {
        _widthView = [ZXCWidthView widthView];
        _widthView.center =  CGPointMake(CGRectGetWidth(self.view.frame) -30 , CGRectGetMidY(self.view.frame));
        _widthView.delegate = self;
        [self.view addSubview:_widthView];
    }
    return _widthView;
}

-(ZXCColorView *)colorView{
    
    if (!_colorView) {
        _colorView =  [ZXCColorView colorView];
        _colorView.center =  CGPointMake(30, CGRectGetMidY(self.view.frame));
        [self.view addSubview:_colorView];
        _colorView.delegate =self;

    }
    
    return _colorView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
   
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearScreen
{
    [_colorFieldView clearScreen];
}

- (IBAction)undo
{
    [_colorFieldView undo];
}

- (IBAction)save
{
    
}

-(void)widthView:(ZXCWidthView *)widthView width:(CGFloat)width
{
    _colorFieldView.width = width;
    self.width = width;
}

-(void)colorView:(ZXCColorView *)colorView color:(UIColor *)color{

    _colorFieldView.color = color;
    _colorFieldView.width = self.width;
    [self.btn setTitleColor:color forState:UIControlStateSelected];
    [self.btn setTitleColor:color forState:UIControlStateNormal];
}
- (IBAction)color:(UIButton *)sender
{
    if (self.colorView.isHidden) {
        self.colorView.hidden = NO;

    }else{
        self.colorView.hidden = NO;
        return;
    }

  }

- (IBAction)width:(UIButton *)sender
{
    if (self.widthView.isHidden) {
        self.widthView.hidden = NO;

    }else{
        self.widthView.hidden = NO;
        return;
    }

}


@end
