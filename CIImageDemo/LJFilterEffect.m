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
    DLog(@"filterName:%@ inputKey:%@",filterName, array);
    //中心点：
    CGPoint center = CGPointMake(tempImage.extent.size.width/2.0, tempImage.extent.size.height/2.0);
    //遮罩图片：
    UIImage* maskImage = [UIImage imageNamed:@"mask.png"];
    CIImage* maskCIImage = [CIImage imageWithCGImage:maskImage.CGImage];
    //背景图片：
    UIImage* backgroundImage = [UIImage imageNamed:@"bg.jpg"];
    CIImage* backgroundCIImage = [CIImage imageWithCGImage:backgroundImage.CGImage];
    
    UIColor* inputColor = kRGBColor(160, 30, 40, 1);
    CIColor* inputCIColor = [CIColor colorWithCGColor:inputColor.CGColor];
    
    
    NSMutableArray* contentProperty = [NSMutableArray array];
    /**  查找 滤镜属性，有在里面的  就给该属性赋值： */
    if ([filterName isEqualToString:LJCIBumpDistortion]) {
        [filter setValue:[CIVector vectorWithCGPoint:center] forKey:kCIInputCenterKey];
        [filter setValue:@(300) forKey:kCIInputRadiusKey];//0~600
        [filter setValue:@(0.5) forKey:kCIInputScaleKey];//-1~1
    }else {
        if ([array containsObject:kCIInputBackgroundImageKey]) {
            [filter setValue:backgroundCIImage forKey:kCIInputBackgroundImageKey];
            [contentProperty addObject:kCIInputBackgroundImageKey];
        }
        if ([array containsObject:kCIInputTimeKey]) {//1~0
            [filter setValue:@(0.5) forKey:kCIInputTimeKey];
            [contentProperty addObject:kCIInputTimeKey];
        }
        if ([array containsObject:kCIInputTransformKey]) {
            CGAffineTransform transform = CGAffineTransformRotate(CGAffineTransformIdentity, 30);
            NSValue* transformValue = [NSValue valueWithCGAffineTransform:transform];
            [filter setValue:transformValue forKey:kCIInputTransformKey];
            [contentProperty addObject:kCIInputTransformKey];
        }
        if ([array containsObject:kCIInputScaleKey]) {
            [filter setValue:@(0.5) forKey:kCIInputScaleKey];
            [contentProperty addObject:kCIInputScaleKey];
        }
        if ([array containsObject:kCIInputAspectRatioKey]) {//2~0.5
            [filter setValue:@(1.2) forKey:kCIInputAspectRatioKey];
            [contentProperty addObject:kCIInputAspectRatioKey];
        }
        if ([array containsObject:kCIInputCenterKey]) {
            [filter setValue:[CIVector vectorWithCGPoint:center] forKey:kCIInputCenterKey];
            [contentProperty addObject:kCIInputCenterKey];
        }
        if ([array containsObject:kCIInputRadiusKey]) {
            [filter setValue:@(50) forKey:kCIInputRadiusKey];
            [contentProperty addObject:kCIInputRadiusKey];
        }
        if ([array containsObject:kCIInputAngleKey]) {//3.14
            [filter setValue:@(1.23) forKey:kCIInputAngleKey];
            [contentProperty addObject:kCIInputAngleKey];
        }
        if ([array containsObject:kCIInputRefractionKey]) {//0~5
            [filter setValue:@(2.6) forKey:kCIInputRefractionKey];
            [contentProperty addObject:kCIInputRefractionKey];
        }
        if ([array containsObject:kCIInputWidthKey]) {
            [filter setValue:@(40) forKey:kCIInputWidthKey];
            [contentProperty addObject:kCIInputWidthKey];
        }
        if ([array containsObject:kCIInputSharpnessKey]) {
            [filter setValue:@(400) forKey:kCIInputSharpnessKey];
            [contentProperty addObject:kCIInputSharpnessKey];
        }
        if ([array containsObject:kCIInputIntensityKey]) {
            [filter setValue:@(0.6) forKey:kCIInputIntensityKey];
            [contentProperty addObject:kCIInputIntensityKey];
        }
        if ([array containsObject:kCIInputEVKey]) {//10~-10
            [filter setValue:@(2) forKey:kCIInputEVKey];
            [contentProperty addObject:kCIInputEVKey];
        }
        if ([array containsObject:kCIInputSaturationKey]) {
            [filter setValue:@(1.5) forKey:kCIInputSaturationKey];
            [contentProperty addObject:kCIInputSaturationKey];
        }
        if ([array containsObject:kCIInputColorKey]) {
            [filter setValue:inputCIColor forKey:kCIInputColorKey];
            [contentProperty addObject:kCIInputColorKey];
        }
        if ([array containsObject:kCIInputBrightnessKey]) {
            [filter setValue:@(0.6) forKey:kCIInputBrightnessKey];
            [contentProperty addObject:kCIInputBrightnessKey];
        }
        if ([array containsObject:kCIInputContrastKey]) {
            [filter setValue:@(0.7) forKey:kCIInputContrastKey];
            [contentProperty addObject:kCIInputContrastKey];
        }
        if ([array containsObject:kCIInputBiasKey]) {//偏斜
            [filter setValue:@(0.3) forKey:kCIInputBiasKey];
            [contentProperty addObject:kCIInputBiasKey];
        }
        if ([array containsObject:kCIInputWeightsKey]) {//[0 0 0 0 1 0 0 0 0]
            CGFloat values[] = {0, 0, 1, 0, 1, 0, 0, 0, 0};
            CIVector* weightVector = [CIVector vectorWithValues:values count:9];
            if ([filterName isEqualToString:LJCIConvolution5X5]) {
                CGFloat values[] = {0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0};
                weightVector = [CIVector vectorWithValues:values count:25];
            }else if ([filterName isEqualToString:LJCIConvolution7X7]){
                CGFloat values[] = {0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0};
                weightVector = [CIVector vectorWithValues:values count:49];
            }
            
            [filter setValue:weightVector forKey:kCIInputWeightsKey];
            [contentProperty addObject:kCIInputWeightsKey];
        }
        if ([array containsObject:kCIInputGradientImageKey]) {
            [filter setValue:maskCIImage forKey:kCIInputGradientImageKey];
            [contentProperty addObject:kCIInputGradientImageKey];
        }
        if ([array containsObject:kCIInputMaskImageKey]) {
            [filter setValue:maskCIImage forKey:kCIInputMaskImageKey];
            [contentProperty addObject:kCIInputMaskImageKey];
        }
        if ([array containsObject:kCIInputShadingImageKey]) {
            [filter setValue:maskCIImage forKey:kCIInputShadingImageKey];
            [contentProperty addObject:kCIInputShadingImageKey];
        }
        if ([array containsObject:kCIInputTargetImageKey]) {
            [filter setValue:backgroundCIImage forKey:kCIInputTargetImageKey];
            [contentProperty addObject:kCIInputTargetImageKey];
        }
        if ([array containsObject:kCIInputExtentKey]) {
            CIVector* extentVector = [CIVector vectorWithX:0 Y:0 Z:300 W:300];
            [filter setValue:extentVector forKey:kCIInputExtentKey];
            [contentProperty addObject:kCIInputExtentKey];
        }
        if ([array containsObject:kCIInputVersionKey]) {
            [filter setValue:@(1) forKey:kCIInputVersionKey];
            [contentProperty addObject:kCIInputVersionKey];
        }
        if ([array containsObject:@"inputLevels"]) {//30~2
            [filter setValue:@(15) forKey:@"inputLevels"];
            [contentProperty addObject:@"inputLevels"];
        }
        if ([array containsObject:@"inputNoiseLevel"]) {//0~0.1
            [filter setValue:@(0.04) forKey:@"inputNoiseLevel"];
            [contentProperty addObject:@"inputNoiseLevel"];
        }
        if ([array containsObject:@"inputMask"]) {
            [filter setValue:maskCIImage forKey:@"inputMask"];
            [contentProperty addObject:@"inputMask"];
        }
        if ([array containsObject:@"inputLightPosition"]) {
            CIVector* positionVector = [CIVector vectorWithX:100 Y:20 Z:60];
            [filter setValue:positionVector forKey:@"inputLightPosition"];
            [contentProperty addObject:@"inputLightPosition"];
        }
        if ([array containsObject:@"inputLightPointsAt"]) {
            CIVector* atVector = [CIVector vectorWithX:80 Y:80 Z:0];
            [filter setValue:atVector forKey:@"inputLightPointsAt"];
            [contentProperty addObject:@"inputLightPointsAt"];
        }
        if ([array containsObject:@"inputConcentration"]) {//1.5~0.001
            [filter setValue:@(0.12) forKey:@"inputConcentration"];
            [contentProperty addObject:@"inputConcentration"];
        }
        /**   CISpotColor
         inputCenterColor1,
         inputReplacementColor1,
         inputCloseness1,
         inputContrast1,
         inputCenterColor2,
         inputReplacementColor2,
         inputCloseness2,
         inputContrast2,
         inputCenterColor3,
         inputReplacementColor3,
         inputCloseness3,
         inputContrast3 */
        if ([array containsObject:@"inputNRNoiseLevel"]) {//0~0.1
            [filter setValue:@(0.08) forKey:@"inputNRNoiseLevel"];
            [contentProperty addObject:@"inputNRNoiseLevel"];
        }
        if ([array containsObject:@"inputNRSharpness"]) {//0~2
            [filter setValue:@(0.9) forKey:@"inputNRSharpness"];
            [contentProperty addObject:@"inputNRSharpness"];
        }
        if ([array containsObject:@"inputEdgeIntensity"]) {//0~200
            [filter setValue:@(50) forKey:@"inputEdgeIntensity"];
            [contentProperty addObject:@"inputEdgeIntensity"];
        }
        if ([array containsObject:@"inputThreshold"]) {//0~1
            [filter setValue:@(0.3) forKey:@"inputThreshold"];
            [contentProperty addObject:@"inputThreshold"];
        }
        if ([array containsObject:@"inputShadowAmount"]) {//0~1
            [filter setValue:@(0.9) forKey:@"inputShadowAmount"];
            [contentProperty addObject:@"inputShadowAmount"];
        }
        if ([array containsObject:@"inputHighlightAmount"]) {//0.3~1
            [filter setValue:@(0.8) forKey:@"inputHighlightAmount"];
            [contentProperty addObject:@"inputHighlightAmount"];
        }
        
    }
    DLog(@"have Set Property:%@\n\n\n\n-",contentProperty);
}











@end
