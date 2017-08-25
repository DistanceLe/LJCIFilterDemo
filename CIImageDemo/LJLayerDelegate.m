//
//  LJLayerDelegate.m
//  CIImageDemo
//
//  Created by LiJie on 2017/8/19.
//  Copyright © 2017年 LiJie. All rights reserved.
//

#import "LJLayerDelegate.h"

@implementation LJLayerDelegate


-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    
    /**  所引用的上下文并不是当前上下文，所以为了能够使用UIKit，
         我们需要将引用的上下文转变成当前上下文 */
    UIGraphicsPushContext(ctx);
    
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor blueColor] setFill];
    [path fill];
    
    UIGraphicsPopContext();
    
}











@end
