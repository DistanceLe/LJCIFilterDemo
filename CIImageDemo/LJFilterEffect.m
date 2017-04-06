//
//  LJFilterEffect.m
//  CIImageDemo
//
//  Created by LiJie on 2017/3/30.
//  Copyright © 2017年 LiJie. All rights reserved.
//

#import "LJFilterEffect.h"

@implementation LJFilterEffect

/**  根据滤镜名 和 图片来初始化一个 滤镜 */
+(CIFilter*)getFilterWithName:(NSString*)filterName inputImage:(UIImage* )inputImage{
    CIFilter* filter = nil;
    if (inputImage) {
        filter = [CIFilter filterWithName:filterName keysAndValues:kCIInputImageKey, [CIImage imageWithCGImage:inputImage.CGImage], nil];
    }else{
        filter = [CIFilter filterWithName:filterName];
    }
    [self setDetailFilter:filter name:filterName];
    return filter;
}

/**  根据 滤镜来获取 图片 */
+(UIImage*)getImageFromFilter:(CIFilter*)filter{
    CIImage* outputImage = filter.outputImage;
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef image = [context createCGImage:outputImage fromRect:outputImage.extent];
    NSArray* array = filter.inputKeys;
    if ([array containsObject:@"inputImage"]) {
        CIImage* inputImage = [filter valueForKey:kCIInputImageKey];
        image = [context createCGImage:outputImage fromRect:inputImage.extent];
//        image = [context createCGImage:outputImage fromRect:CGRectMake(0, 0, 200, 200)];
    }
    
    
    UIImage* returnImage = [UIImage imageWithCGImage:image];
//    UIImage* returnImage = [UIImage imageWithCIImage:outputImage];
    CGImageRelease(image);
    return returnImage;
}

/**  根据 滤镜来获取 CG图片 */
+(CGImageRef)getCGImageRefFromFilter:(CIFilter*)filter{
    CIImage* outputImage = filter.outputImage;
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef image = [context createCGImage:outputImage fromRect:outputImage.extent];
    return image;
}

#pragma mark - ================ Set Detail Filter ==================
+(void)setDetailFilter:(CIFilter*)filter name:(NSString*)filterName{
    
    CIImage* tempImage = filter.outputImage;
    NSArray* array = filter.inputKeys;
    if ([array containsObject:kCIInputImageKey]) {
        tempImage = [filter valueForKey:kCIInputImageKey];
    }
    CGPoint center = CGPointMake(tempImage.extent.size.width/2.0, tempImage.extent.size.height/2.0);
    
    if ([filterName isEqualToString:LJCIBumpDistortion]) {
        [filter setValue:[CIVector vectorWithCGPoint:center] forKey:@"inputCenter"];
        [filter setValue:@(400) forKey:@"inputRadius"];//0~600
        [filter setValue:@(0.6) forKey:@"inputScale"];//-1~1
    }else {
        if ([array containsObject:kCIInputBackgroundImageKey]) {
            [filter setValue:@(400) forKey:kCIInputBackgroundImageKey];
        }
        if ([array containsObject:kCIInputTimeKey]) {
            [filter setValue:@(400) forKey:kCIInputTimeKey];
        }
        if ([array containsObject:kCIInputTransformKey]) {
            [filter setValue:@(400) forKey:kCIInputTransformKey];
        }
        if ([array containsObject:kCIInputScaleKey]) {
            [filter setValue:@(400) forKey:kCIInputScaleKey];
        }
        if ([array containsObject:kCIInputAspectRatioKey]) {
            [filter setValue:@(400) forKey:kCIInputAspectRatioKey];
        }
        if ([array containsObject:kCIInputCenterKey]) {
            [filter setValue:@(400) forKey:kCIInputCenterKey];
        }
        if ([array containsObject:kCIInputRadiusKey]) {
            [filter setValue:@(400) forKey:kCIInputRadiusKey];
        }
        if ([array containsObject:kCIInputAngleKey]) {
            [filter setValue:@(400) forKey:kCIInputAngleKey];
        }
        if ([array containsObject:kCIInputRefractionKey]) {
            [filter setValue:@(400) forKey:kCIInputRefractionKey];
        }
        if ([array containsObject:kCIInputWidthKey]) {
            [filter setValue:@(400) forKey:kCIInputWidthKey];
        }
        if ([array containsObject:kCIInputSharpnessKey]) {
            [filter setValue:@(400) forKey:kCIInputSharpnessKey];
        }
        if ([array containsObject:kCIInputIntensityKey]) {
            [filter setValue:@(400) forKey:kCIInputIntensityKey];
        }
        if ([array containsObject:kCIInputEVKey]) {
            [filter setValue:@(400) forKey:kCIInputEVKey];
        }
        if ([array containsObject:kCIInputSaturationKey]) {
            [filter setValue:@(400) forKey:kCIInputSaturationKey];
        }
        if ([array containsObject:kCIInputColorKey]) {
            [filter setValue:@(400) forKey:kCIInputColorKey];
        }
        if ([array containsObject:kCIInputBrightnessKey]) {
            [filter setValue:@(400) forKey:kCIInputBrightnessKey];
        }
        if ([array containsObject:kCIInputContrastKey]) {
            [filter setValue:@(400) forKey:kCIInputContrastKey];
        }
        if ([array containsObject:kCIInputBiasKey]) {
            [filter setValue:@(400) forKey:kCIInputBiasKey];
        }
        if ([array containsObject:kCIInputWeightsKey]) {
            [filter setValue:@(400) forKey:kCIInputWeightsKey];
        }
        if ([array containsObject:kCIInputGradientImageKey]) {
            [filter setValue:@(400) forKey:kCIInputGradientImageKey];
        }
        if ([array containsObject:kCIInputMaskImageKey]) {
            [filter setValue:@(400) forKey:kCIInputMaskImageKey];
        }
        if ([array containsObject:kCIInputShadingImageKey]) {
            [filter setValue:@(400) forKey:kCIInputShadingImageKey];
        }
        if ([array containsObject:kCIInputTargetImageKey]) {
            [filter setValue:@(400) forKey:kCIInputTargetImageKey];
        }
        if ([array containsObject:kCIInputExtentKey]) {
            [filter setValue:@(400) forKey:kCIInputExtentKey];
        }
        if ([array containsObject:kCIInputVersionKey]) {
            [filter setValue:@(400) forKey:kCIInputVersionKey];
        }
        
        
        if ([array containsObject:@"inputLevels"]) {
            [filter setValue:@(400) forKey:@"inputLevels"];
        }
        if ([array containsObject:@"inputLevels"]) {
            [filter setValue:@(400) forKey:@"inputLevels"];
        }
    }
    
}











@end
