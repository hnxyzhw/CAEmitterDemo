//
//  ViewController.m
//  CAEmitterDemo
//
//  Created by zhw on 15/8/25.
//  Copyright (c) 2015年 zhw. All rights reserved.
//

#import "ViewController.h"
#import <CoreGraphics/CoreGraphics.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //UIKit中的粒子特性
    
    CAEmitterLayer *snowEmitter = [CAEmitterLayer layer];
    
    //粒子发射位置
    snowEmitter.emitterPosition = CGPointMake(0, -20);
    //发射源的尺寸大小
    snowEmitter.emitterSize = CGSizeMake([UIScreen mainScreen].bounds.size.width , 10);
    //发射模式
    snowEmitter.emitterMode = kCAEmitterLayerSurface;
    //发射源的形状
    snowEmitter.emitterShape = kCAEmitterLayerSurface;
    
    
    //创建雪花粒子特效
    CAEmitterCell *snowflake = [CAEmitterCell emitterCell];
    
    //粒子的名字
    snowflake.name = @"snow";
    
    //粒子参数的速度乘以因子
    snowflake.birthRate = 1.0;
    snowflake.lifetime = 120.0;
    
    //粒子速度
    snowflake.velocity = 10.0;
    
    //粒子的速度范围
    snowflake.velocityRange = 10;
    
    //粒子y方向的加速度分量
    snowflake.yAcceleration = 2;
    
    //周围发射角度
    snowflake.emissionRange = 0.25 * M_PI;
    
    //子旋转角度范围
    snowflake.spinRange = 0.25 * M_PI;
    
    snowflake.contents = (id)[[UIImage imageNamed:@"snows"] CGImage];
    
    //设置雪花形状粒子的颜色
    snowflake.color = [[UIColor colorWithRed:0.600 green:0.658 blue:0.543 alpha:1.00] CGColor];
    
    //创建星星形状的粒子
    CAEmitterCell *snowflake1 = [CAEmitterCell emitterCell];
    //粒子的名字
    snowflake1.name = @"snow";
    //粒子参数的速度乘数因子
    snowflake1.birthRate = 1.0;
    snowflake1.lifetime = 120.0;
    //粒子速度
    snowflake1.velocity =5.0;
    //粒子的速度范围
    snowflake1.velocityRange = 10;
    //粒子y方向的加速度分量
    snowflake1.yAcceleration = 3;
    //周围发射角度
    snowflake1.emissionRange = 0.5 * M_PI;
    //子旋转角度范围
    snowflake1.spinRange = 0.25 * M_PI;
    //粒子的内容和内容的颜色
    snowflake1.contents = (id)[[UIImage imageNamed:@"snows"] CGImage];
    snowflake1.color = [[UIColor colorWithRed:0.600 green:0.658 blue:0.743 alpha:1.000] CGColor];
    
    snowEmitter.scale = 0.5;
    
    snowEmitter.shadowOpacity = 1.0;
    snowEmitter.shadowRadius = 0.0;
    snowEmitter.shadowOffset = CGSizeMake(0.0, 1.0);
    
    //粒子边缘的颜色
    
    snowEmitter.shadowColor = [[UIColor whiteColor] CGColor];
    
    snowEmitter.emitterCells = [NSArray arrayWithObjects:snowflake,snowflake1, nil];
    
    [self.view.layer insertSublayer:snowEmitter atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
