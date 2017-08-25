//
//  LJFilterNameView.m
//  CIImageDemo
//
//  Created by LiJie on 2017/4/3.
//  Copyright © 2017年 LiJie. All rights reserved.
//

#import "LJFilterNameView.h"
#import "LJFilterConst.h"
@interface LJFilterNameView ()<UIPickerViewDelegate, UIPickerViewDataSource>

@property(nonatomic, strong)StatusBlock tempHandler;
@property(nonatomic, strong)NSArray* titleArray;
@property(nonatomic, strong)NSArray* valueArray;

@property(nonatomic, strong)UIPickerView* filterPickView;


@end

@implementation LJFilterNameView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)callBackTitle:(StatusBlock)handler{
    self.tempHandler = handler;
}

-(void)initUI{
    self.titleArray = @[@"CICategoryDistortionEffect(distortion 扭曲, 失真)",
                        @"CICategoryGeometryAdjustment(几何 调整)",
                        @"CICategoryCompositeOperation(合成操作)",
                        @"CICategoryHalftoneEffect(中间色)",
                        @"CICategoryColorAdjustment(颜色调节)",
                        @"CICategoryColorEffect",
                        @"CICategoryTransition(转变,过渡)",
                        @"CICategoryTileEffect( 瓦片 )",
                        @"CICategoryGenerator(发生器 无inputImage)",
                        @"CICategoryReduction(减少)",
                        @"CICategoryGradient(梯度 生成图片的 无需inputImage)",
                        @"CICategoryStylize(程式化 风格化)",
                        @"CICategorySharpen(削尖)",
                        @"CICategoryBlur(使模糊)"];
    self.valueArray = @[
                        @[LJCIBumpDistortion, LJCIBumpDistortionLinear, LJCICircularScreen,
                          LJCICircularWrap, LJCIDisplacementDistortion, LJCIDroste,
                          LJCIGlassDistortion, LJCIGlassLozenge, LJCIHoleDistortion,
                          LJCILightTunnel, LJCINinePartStretched, LJCINinePartTiled,
                          LJCIPinchDistortion, LJCIStretchCrop, LJCITorusLensDistortion,
                          LJCITwirlDistortion, LJCIVortexDistortion],
                        @[LJCIAffineTransform, LJCICrop, LJCILanczosScaleTransform,
                          LJCIPerspectiveCorrection, LJCIPerspectiveTransform, LJCIPerspectiveTransformWithExtent,
                          LJCIStraightenFilter],
                        @[LJCIAdditionCompositing, LJCIColorBlendMode, LJCIColorBurnBlendMode,
                          LJCIColorDodgeBlendMode, LJCIDarkenBlendMode, LJCIDifferenceBlendMode,
                          LJCIDivideBlendMode, LJCIExclusionBlendMode, LJCIHardLightBlendMode,
                          LJCIHueBlendMode, LJCIHardLightBlendMode, LJCILinearBurnBlendMode,
                          LJCILinearDodgeBlendMode, LJCILuminosityBlendMode, LJCIMaximumComponent,
                          LJCIMinimumComponent, LJCIMultiplyBlendMode, LJCIMultiplyCompositing,
                          LJCIOverlayBlendMode, LJCIPinLightBlendMode, LJCISaturationBlendMode,
                          LJCIScreenBlendMode, LJCISoftLightBlendMode, LJCISourceAtopCompositing,
                          LJCISourceInCompositing, LJCISourceOutCompositing,LJCISourceOverCompositing,
                          LJCISubtractBlendMode],
                        @[LJCICircularScreen, LJCICMYKHalftone, LJCIDotScreen,
                          LJCIHatchedScreen, LJCILineScreen],
                        @[LJCIColorClamp, LJCIColorControls, LJCIColorMatrix,
                          LJCIColorPolynomial, LJCIExposureAdjust, LJCIGammaAdjust,
                          LJCIHueAdjust, LJCILinearToSRGBToneCurve, LJCISRGBToneCurveToLinear,
                          LJCITemperatureAndTint, LJCIToneCurve, LJCIVibrance,
                          LJCIWhitePointAdjust],
                        @[LJCIColorCrossPolynomial, LJCIColorCube, LJCIColorCubeWithColorSpace,
                          LJCIColorInvert, LJCIColorMap, LJCIColorMonochrome,
                          LJCIColorPosterize, LJCIFalseColor, LJCIMaskToAlpha,
                          LJCIMaximumComponent, LJCIMinimumComponent, LJCIPhotoEffectChrome,
                          LJCIPhotoEffectFade, LJCIPhotoEffectInstant, LJCIPhotoEffectMono,
                          LJCIPhotoEffectNoir, LJCIPhotoEffectProcess, LJCIPhotoEffectTonal,
                          LJCIPhotoEffectTransfer, LJCISepiaTone, LJCIThermal,
                          LJCIVignette, LJCIVignetteEffect, LJCIXRay],
                        @[LJCIAccordionFoldTransition, LJCIBarsSwipeTransition, LJCICopyMachineTransition,
                          LJCIDisintegrateWithMaskTransition, LJCIDissolveTransition, LJCIFlashTransition,
                          LJCIModTransition, LJCIPageCurlTransition, LJCIPageCurlWithShadowTransition,
                          LJCIRippleTransition, LJCISwipeTransition],
                        @[LJCIAffineClamp, LJCIAffineTile, LJCIClamp,
                          LJCIEightfoldReflectedTile, LJCIFourfoldReflectedTile, LJCIFourfoldRotatedTile,
                          LJCIFourfoldTranslatedTile, LJCIGlideReflectedTile, LJCIKaleidoscope,
                          LJCIOpTile, LJCIParallelogramTile, LJCIPerspectiveTile,
                          LJCISixfoldRotatedTile, LJCISixfoldRotatedTile, LJCITriangleKaleidoscope,
                          LJCITriangleTile, LJCITwelvefoldReflectedTile],
                        @[LJCIAztecCodeGenerator, LJCICheckerboardGenerator, LJCICode128BarcodeGenerator,
                          LJCIConstantColorGenerator, LJCILenticularHaloGenerator, LJCIPDF417BarcodeGenerator,
                          LJCIQRCodeGenerator, LJCIRandomGenerator, LJCIStarShineGenerator,
                          LJCIStripesGenerator, LJCISunbeamsGenerator],
                        @[LJCIAreaAverage, LJCIAreaHistogram, LJCIAreaMaximum,
                          LJCIAreaMaximumAlpha, LJCIAreaMinimum, LJCIAreaMinimumAlpha,
                          LJCIColumnAverage, LJCIHistogramDisplayFilter, LJCIRowAverage],
                        @[LJCIGaussianGradient, LJCIHueSaturationValueGradient, LJCILinearGradient,
                          LJCIRadialGradient, LJCISmoothLinearGradient],
                        @[LJCIBlendWithAlphaMask, LJCIBlendWithMask, LJCIBloom,
                          LJCIComicEffect, LJCIConvolution3X3, LJCIConvolution5X5,
                          LJCIConvolution7X7, LJCIConvolution9Horizontal, LJCIConvolution9Vertical,
                          LJCICrystallize, LJCIDepthOfField, LJCIEdges,
                          LJCIEdgeWork, LJCIGloom, LJCIHeightFieldFromMask,
                          LJCIHexagonalPixellate, LJCIHighlightShadowAdjust, LJCILineOverlay,
                          LJCIPixellate, LJCIPointillize, LJCIShadedMaterial,
                          LJCISpotColor, LJCISpotLight],
                        @[LJCISharpenLuminance, LJCIUnsharpMask],
                        @[LJCIBoxBlur, LJCIDiscBlur, LJCIGaussianBlur,
                          LJCIMaskedVariableBlur, LJCIMedianFilter, LJCIMotionBlur,
                          LJCINoiseReduction, LJCIZoomBlur]];
    
    self.filterPickView = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 0, IPHONE_WIDTH, IPHONE_WIDTH-104)];
    [self addSubview:self.filterPickView];
    
    self.filterPickView.delegate = self;
    self.filterPickView.dataSource = self;
    
    UIButton* completeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    completeButton.frame = CGRectMake(0, IPHONE_WIDTH-44-60, IPHONE_WIDTH, 44);
    completeButton.tintColor = [UIColor clearColor];
    [completeButton setTitle:@"完成" forState:UIControlStateNormal];
    [completeButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    completeButton.backgroundColor = [[UIColor lightGrayColor]colorWithAlphaComponent:0.2];
    @weakify(self);
    [completeButton addTargetClickHandler:^(UIButton *but, id obj) {
        @strongify(self);
        [self dismiss];
    }];
    [self addSubview:completeButton];
    
    self.backgroundColor = kRGBColor(230, 230, 230, 1);
}

-(void)dismiss{
    NSInteger currentRow = [self.filterPickView selectedRowInComponent:0] >= 0 ? [self.filterPickView selectedRowInComponent:0] : 0;
    NSInteger currentValueRow = [self.filterPickView selectedRowInComponent:1] >= 0 ? [self.filterPickView selectedRowInComponent:1] : 0;
    if (self.tempHandler) {
        self.tempHandler(self.valueArray[currentRow][currentValueRow], nil);
    }
    
    [UIView animateWithDuration:0.3 animations:^{
        self.lj_y = IPHONE_HEIGHT;
    } completion:^(BOOL finished) {
        if (finished) {
            self.hidden = YES;
        }
    }];
}
-(void)show{
    self.hidden = NO;
    [UIView animateWithDuration:0.3 animations:^{
        self.lj_y = IPHONE_HEIGHT-IPHONE_WIDTH+60;
    } completion:^(BOOL finished) {
        if (finished) {
            
        }
    }];
}

#pragma mark - ================ Delegate ==================
-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    return IPHONE_WIDTH/2.0;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 55;
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == 0) {
        return self.titleArray.count;
    }else{
        NSInteger currentRow = [pickerView selectedRowInComponent:0] >= 0 ? [pickerView selectedRowInComponent:0] : 0;
        return [self.valueArray[currentRow] count];
    }
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == 0) {
        [pickerView selectRow:0 inComponent:1 animated:NO];
        [pickerView reloadComponent:1];
    }else{
        NSInteger currentRow = [pickerView selectedRowInComponent:0] >= 0 ? [pickerView selectedRowInComponent:0] : 0;
        if (self.tempHandler) {
            self.tempHandler(self.valueArray[currentRow][row], nil);
        }
    }
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    UILabel* label = (UILabel*)view;
    if (!label) {
        label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, IPHONE_WIDTH/2.0, 55)];
        label.numberOfLines = 0;
        label.textColor = [UIColor blackColor];
        label.font = [UIFont systemFontOfSize:15];
        label.adjustsFontSizeToFitWidth = YES;
    }
    if (component == 0) {
        label.text = self.titleArray[row];
    }else{
        NSInteger currentRow = [pickerView selectedRowInComponent:0] >= 0 ? [pickerView selectedRowInComponent:0] : 0;
        label.text = self.valueArray[currentRow][row];
    }
    return label;
}











@end
