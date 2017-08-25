//
//  LJFilterConst.h
//  CIImageDemo
//
//  Created by LiJie on 2017/3/30.
//  Copyright © 2017年 LiJie. All rights reserved.
//

#import <Foundation/Foundation.h>

/**   一共180个滤镜
 inputCenter -> CIVector
 inputPoint -> CIVector
 inputSize -> CIVector
 inputTexture -> CIImage
 */


#pragma mark - ================ CICategoryDistortionEffect(distortion 扭曲, 失真) ==================
/**  (bump 肿块，隆起) -> inputCenter, inputImage, inputRadius, inputScale*/
UIKIT_EXTERN NSString *const LJCIBumpDistortion;
/**  inputAngle, inputCenter inputImage  inputRadius  inputScale */
UIKIT_EXTERN NSString *const LJCIBumpDistortionLinear;
/**  (splash 斑点)inputCenter inputImage  inputRadius*/
UIKIT_EXTERN NSString *const LJCICircularScreen;
/**  (circularWrap 环形包) inputAngle  inputCenter inputImage  inputRadius*/
UIKIT_EXTERN NSString *const LJCICircularWrap;//iOS 9
/**  (displacement 代替 置换） inputDisplacementImage inputImage inputScale*/
UIKIT_EXTERN NSString *const LJCIDisplacementDistortion;//iOS 9
/**  (droste德罗斯特，一种递归的视觉形式)  inputImage  inputInsetPoint0  inputInsetPoint1  inputPeriodicity(周期数)  inputRotation  inputStrands  inputZoom*/
UIKIT_EXTERN NSString *const LJCIDroste;//iOS 9
/**  (glass 玻璃 inputImage  inputTexture(CIImage) inputCenter  inputScale) */
UIKIT_EXTERN NSString *const LJCIGlassDistortion;//iOS 8
/**  (lozenge 菱形玻璃) inputImage   inputPoint0   inputPoint1  inputRadius inputRefraction(折射) */
UIKIT_EXTERN NSString *const LJCIGlassLozenge;//iOS 9
/**  (hole孔 洞) inputImage  inputCenter  inputRadius */
UIKIT_EXTERN NSString *const LJCIHoleDistortion;
/**  (tunnel 时光隧道) inputImage  inputCenter   inputRotation  inputRadius*/
UIKIT_EXTERN NSString *const LJCILightTunnel;
/**  (stretch拉伸) inputBreakpoint0   inputBreakpoint1  inputGrowAmount  inputImage */
UIKIT_EXTERN NSString *const LJCINinePartStretched;//iOS 10
/**  (tiled 平铺) inputBreakpoint0  inputBreakpoint1  inputFlipYTiles  inputGrowAmount(CIVector[100 100]) inputImage*/
UIKIT_EXTERN NSString *const LJCINinePartTiled;//iOS 10
/**  (pinch 捏)  inputImage inputCenter  inputRadius  inputScale */
UIKIT_EXTERN NSString *const LJCIPinchDistortion;
/**  拉伸修剪  inputImage inputSize inputCropAmount inputCenterStretchAmount */
UIKIT_EXTERN NSString *const LJCIStretchCrop;//iOS 9
/**  (torus lens 圆环透镜) inputImage  inputCenter  inputRadius  inputWidth  inputRefraction */
UIKIT_EXTERN NSString *const LJCITorusLensDistortion;//iOS 9
/**  (twirl 螺旋)   inputImage  inputCenter  inputRadius  inputAngle */
UIKIT_EXTERN NSString *const LJCITwirlDistortion;
/**  (vortex 涡流) inputImage   inputCenter  inputRadius  inputAngle*/
UIKIT_EXTERN NSString *const LJCIVortexDistortion;


#pragma mark - ================ CICategoryGeometryAdjustment(几何 调整) ==================
/**  仿射变换 inputImage   inputTransform(NSValue) */
UIKIT_EXTERN NSString *const LJCIAffineTransform;
/**  修剪 inputImage  inputRectangle (CIVector[0 0 300 300]) */
UIKIT_EXTERN NSString *const LJCICrop;
/**  (lanczos算法：对称矩阵 -> 对称三对角矩阵) inputImage   inputScale inputAspectRatio */
UIKIT_EXTERN NSString *const LJCILanczosScaleTransform;
/**  透视 反转纠正，(四个点)inputImage  inputTopLeft  inputTopRight inputBottomRight inputBottomLeft */
UIKIT_EXTERN NSString *const LJCIPerspectiveCorrection;//iOS 8
/**  inputImage inputTopLeft  inputTopRight inputBottomRight inputBottomLeft */
UIKIT_EXTERN NSString *const LJCIPerspectiveTransform;
/**  inputExtent(CIAttributeTypeRectangle[0 0 300 300]) inputImage inputTopLeft  inputTopRight inputBottomRight inputBottomLeft */
UIKIT_EXTERN NSString *const LJCIPerspectiveTransformWithExtent;
/**  (straighten 变直) inputImage  inputAngle */
UIKIT_EXTERN NSString *const LJCIStraightenFilter;


#pragma mark - ================ CICategoryCompositeOperation(合成操作) ==================
/**  添加混合 inputImage  inputBackgroundImage */
UIKIT_EXTERN NSString *const LJCIAdditionCompositing;
/**  颜色混合   */
UIKIT_EXTERN NSString *const LJCIColorBlendMode;
/**  颜色灼烧混合  */
UIKIT_EXTERN NSString *const LJCIColorBurnBlendMode;
/**  dodge 避开 */
UIKIT_EXTERN NSString *const LJCIColorDodgeBlendMode;
/**  模糊 变黑  */
UIKIT_EXTERN NSString *const LJCIDarkenBlendMode;
/**  不同 */
UIKIT_EXTERN NSString *const LJCIDifferenceBlendMode;
/**  分开  */
UIKIT_EXTERN NSString *const LJCIDivideBlendMode;
/**  exclusion排除 */
UIKIT_EXTERN NSString *const LJCIExclusionBlendMode;
/**  硬光 */
UIKIT_EXTERN NSString *const LJCIHardLightBlendMode;
/**  hue 色度 */
UIKIT_EXTERN NSString *const LJCIHueBlendMode;
/**  明亮 */
UIKIT_EXTERN NSString *const LJCILightenBlendMode;
/**  线性灼烧 */
UIKIT_EXTERN NSString *const LJCILinearBurnBlendMode;
/**  线性 避开 */
UIKIT_EXTERN NSString *const LJCILinearDodgeBlendMode;
/**  luminosity 亮度 */
UIKIT_EXTERN NSString *const LJCILuminosityBlendMode;
/**  最大 */
UIKIT_EXTERN NSString *const LJCIMaximumCompositing;
/**  最小 取最小的那一张图片 */
UIKIT_EXTERN NSString *const LJCIMinimumCompositing;
/**  增加，乘 */
UIKIT_EXTERN NSString *const LJCIMultiplyBlendMode;
/**  叠加合成 保留一张 */
UIKIT_EXTERN NSString *const LJCIMultiplyCompositing;
/**  覆盖 */
UIKIT_EXTERN NSString *const LJCIOverlayBlendMode;
/**  针 */
UIKIT_EXTERN NSString *const LJCIPinLightBlendMode;
/**  saturation 饱和 */
UIKIT_EXTERN NSString *const LJCISaturationBlendMode;
/**  屏 */
UIKIT_EXTERN NSString *const LJCIScreenBlendMode;
/**  柔光 */
UIKIT_EXTERN NSString *const LJCISoftLightBlendMode;
/**  直接覆盖，不混合 */
UIKIT_EXTERN NSString *const LJCISourceAtopCompositing;
/**  保留重叠部分，且不混合 */
UIKIT_EXTERN NSString *const LJCISourceInCompositing;
/**  去除重叠部分，不混合 */
UIKIT_EXTERN NSString *const LJCISourceOutCompositing;
/**  直接覆盖，不混合 */
UIKIT_EXTERN NSString *const LJCISourceOverCompositing;
/**  减去 相同的颜色 */
UIKIT_EXTERN NSString *const LJCISubtractBlendMode;//iOS 8


#pragma mark - ================ CICategoryHalftoneEffect(中间色) ==================
/**  圆形半色调屏幕 inputImage  inputCenter  inputWidth  inputSharpness(锐度) */
UIKIT_EXTERN NSString *const LJCICircularScreen;
/**  inputImage  inputCenter  inputWidth  inputAngle   inputSharpness  inputGCR  inputUCR */
UIKIT_EXTERN NSString *const LJCICMYKHalftone;//iOS 9
/**  inputImage  inputCenter  inputAngle  inputWidth  inputSharpness */
UIKIT_EXTERN NSString *const LJCIDotScreen;
/**  hatched 影线 inputImage  inputCenter  inputAngle  inputWidth  inputSharpness */
UIKIT_EXTERN NSString *const LJCIHatchedScreen;
/**  inputImage  inputCenter  inputAngle  inputWidth  inputSharpness */
UIKIT_EXTERN NSString *const LJCILineScreen;


#pragma mark - ================ CICategoryColorAdjustment(颜色调节) ==================
/**  让颜色保持在一个指定范围 inputImage  inputMinComponents [0 0 0 0]  inputMaxComponents[1 1 1 1]*/
UIKIT_EXTERN NSString *const LJCIColorClamp;
/**  调节颜色 inputImage  inputSaturation(饱和度)  inputBrightness  inputContrast(对比度) */
UIKIT_EXTERN NSString *const LJCIColorControls;
/**  matrix(矩阵 RGBA)  inputImage  inputRVector[1 0 0 0]  inputGVector[0 1 0 0]  inputBVector[0 0 1 0]  inputAVector[0 0 0 1]  inputBiasVector[0 0 0 0](偏斜率)
     s.r = dot(s, redVector)  s = s + bias*/
UIKIT_EXTERN NSString *const LJCIColorMatrix;
/**  (polynomial(多项)coefficient(系数)） inputImage  inputRedCoefficients[0 1 0 0]  inputGreenCoefficients[0 1 0 0]  inputBlueCoefficients[0 1 0 0]    inputAlphaCoefficients[0 1 0 0]
     r = rCoeff[0] + rCoeff[1] * r + rCoeff[2] * r*r + rCoeff[3] * r*r*r */
UIKIT_EXTERN NSString *const LJCIColorPolynomial;
/**  (exposure 曝光)  inputImage  inputEV   s.rgb * pow(2.0, ev)*/
UIKIT_EXTERN NSString *const LJCIExposureAdjust;
/**  (gamma 伽玛) inputImage  inputPower    pow(s.rgb, vec3(power)) */
UIKIT_EXTERN NSString *const LJCIGammaAdjust;
/**  (hue 色调 色彩)  inputImage  inputAngle */
UIKIT_EXTERN NSString *const LJCIHueAdjust;
/**  (toneCurve 色度曲线)  inputImage （Maps color intensity from a linear gamma curve to the sRGB color space.）*/
UIKIT_EXTERN NSString *const LJCILinearToSRGBToneCurve;
/**  inputImage  (Maps color intensity from the sRGB color space to a linear gamma curve) */
UIKIT_EXTERN NSString *const LJCISRGBToneCurveToLinear;
/**  色温 色彩(neutral 中性)， inputImage  inputNeutral[6500, 0]  inputTargetNeutral [6500, 0]  */
UIKIT_EXTERN NSString *const LJCITemperatureAndTint;
/**  色度曲线  inputImage (CIAttributeTypeOffset) inputPoint0[0, 0]  inputPoint1[0.25, 0.25]  inputPoint2[0.5, 0.5]  inputPoint3[0.75, 0.75]  inputPoint4[1, 1] */
UIKIT_EXTERN NSString *const LJCIToneCurve;
/**  (vibrance 震动)调整饱和度  inputImage  inputAmount */
UIKIT_EXTERN NSString *const LJCIVibrance;
/**  inputImage  inputColor(CIColor) */
UIKIT_EXTERN NSString *const LJCIWhitePointAdjust;


#pragma mark - ================ CICategoryColorEffect ==================
/**  inputImage  inputRedCoefficients  inputGreenCoefficients  inputBlueCoefficients
 out.r =   in.r * rC[0] +        in.g * rC[1] +        in.b * rC[2]
         + in.r * in.r * rC[3] + in.g * in.g * rC[4] + in.b * in.b * rC[5]
         + in.r * in.g * rC[6] + in.g * in.b * rC[7] + in.b * in.r * rC[8]
         + rC[9]*/
UIKIT_EXTERN NSString *const LJCIColorCrossPolynomial;
/**  立方体  inputImage  inputCubeDimension  inputCubeData(NSData) */
UIKIT_EXTERN NSString *const LJCIColorCube;
/**  inputImage  inputCubeDimension  inputCubeData  inputColorSpace(CGColorSpaceRef)  */
UIKIT_EXTERN NSString *const LJCIColorCubeWithColorSpace;
/**  反转 inputImage */
UIKIT_EXTERN NSString *const LJCIColorInvert;
/**  inputImage  inputGradientImage(梯度图片) */
UIKIT_EXTERN NSString *const LJCIColorMap;
/**  monochrome黑白照片  inputImage  inputColor  inputIntensity（程度） */
UIKIT_EXTERN NSString *const LJCIColorMonochrome;
/**  (posterize 色调分离) inputImage  inputLevels*/
UIKIT_EXTERN NSString *const LJCIColorPosterize;
/**  inputImage  inputColor0  inputColor1 */
UIKIT_EXTERN NSString *const LJCIFalseColor;
/**  inputImage   */
UIKIT_EXTERN NSString *const LJCIMaskToAlpha;
/**  inputImage   Returns a grayscale image from max(r,g,b).*/
UIKIT_EXTERN NSString *const LJCIMaximumComponent;
/**  inputImage   Returns a grayscale image from min(r,g,b).*/
UIKIT_EXTERN NSString *const LJCIMinimumComponent;
/**  (chrome 铬)inputImage    */
UIKIT_EXTERN NSString *const LJCIPhotoEffectChrome;
/**  (fade 褪色) inputImage */
UIKIT_EXTERN NSString *const LJCIPhotoEffectFade;
/**  (instant 即刻)有点复古的样子 inputImage */
UIKIT_EXTERN NSString *const LJCIPhotoEffectInstant;
/**  (mono 单通道)黑白照片 inputImage*/
UIKIT_EXTERN NSString *const LJCIPhotoEffectMono;
/**  (noir 悲剧色彩) inputImage */
UIKIT_EXTERN NSString *const LJCIPhotoEffectNoir;
/**  (强调冷色) inputImage */
UIKIT_EXTERN NSString *const LJCIPhotoEffectProcess;
/**  (tonal 色调)也是黑白的样子 inputImage */
UIKIT_EXTERN NSString *const LJCIPhotoEffectTonal;
/**  (强调暖色调)inputImage */
UIKIT_EXTERN NSString *const LJCIPhotoEffectTransfer;
/**  sepia 深褐色  inputImage  inputIntensity */
UIKIT_EXTERN NSString *const LJCISepiaTone;
/**  (thermal 热的)inputImage */
UIKIT_EXTERN NSString *const LJCIThermal;//iOS 10
/**  vignette晕映  inputImage  inputRadius  inputIntensity */
UIKIT_EXTERN NSString *const LJCIVignette;
/**  inputImage  inputCenter  inputIntensity  inputRadius */
UIKIT_EXTERN NSString *const LJCIVignetteEffect;
/**  inputImage X射线 */
UIKIT_EXTERN NSString *const LJCIXRay;//iOS 10


#pragma mark - ================ CICategoryTransition(转变,过渡) ==================
/**  (accordion手风琴 fold折叠）  inputImage  inputTargetImage  inputBottomHeight  inputNumberOfFolds  inputFoldShadowAmount   inputTime*/
UIKIT_EXTERN NSString *const LJCIAccordionFoldTransition;//iOS 8
/**  inputImage  inputTargetImage  inputAngle  inputWidth  inputBarOffset(NSNumber)  inputTime */
UIKIT_EXTERN NSString *const LJCIBarsSwipeTransition;
/**  inputImage  inputTargetImage  inputExtent  inputColor  inputTime  inputAngle   inputWidth  inputOpacity */
UIKIT_EXTERN NSString *const LJCICopyMachineTransition;
/** (disintegrate 崩溃) inputImage  inputTargetImage  inputMaskImage  inputTime  inputShadowRadius  inputShadowDensity  inputShadowOffset[0 -10] */
UIKIT_EXTERN NSString *const LJCIDisintegrateWithMaskTransition;
/**  (dissolve 溶解)  inputImage  inputTargetImage  inputTime*/
UIKIT_EXTERN NSString *const LJCIDissolveTransition;
/**  inputImage  inputTargetImage  inputCenter  inputExtent  inputColor  inputTime  inputMaxStriationRadius  inputStriationStrength  inputStriationContrast  inputFadeThreshold */
UIKIT_EXTERN NSString *const LJCIFlashTransition;
/**  inputImage  inputTargetImage  inputCenter  inputTime  inputAngle  inputRadius  inputCompression */
UIKIT_EXTERN NSString *const LJCIModTransition;
/**  inputImage  inputTargetImage  inputBacksideImage  inputShadingImage  inputExtent  inputTime  inputAngle  inputRadius */
UIKIT_EXTERN NSString *const LJCIPageCurlTransition;//iOS 9
/**  inputImage  inputTargetImage  inputBacksideImage  inputExtent  inputTime  inputAngle  inputRadius  inputShadowSize  inputShadowAmount  inputShadowExtent */
UIKIT_EXTERN NSString *const LJCIPageCurlWithShadowTransition;//iOS 9
/**  (ripple 波纹)inputImage  inputTargetImage   inputShadingImage  inputCenter  inputExtent  inputTime  inputWidth  inputScale */
UIKIT_EXTERN NSString *const LJCIRippleTransition;//iOS 9
/**  inputImage  inputTargetImage  inputExtent  inputColor  inputTime   inputAngle  inputWidth  inputOpacity*/
UIKIT_EXTERN NSString *const LJCISwipeTransition;


#pragma mark - ================ CICategoryTileEffect( 瓦片 ) ==================
/**  inputImage  inputTransform */
UIKIT_EXTERN NSString *const LJCIAffineClamp;
/**  inputImage  inputTransform  */
UIKIT_EXTERN NSString *const LJCIAffineTile;
/**  （clamp 夹紧）inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIClamp;//iOS 10;
/**  inputImage  inputCenter  inputAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCIEightfoldReflectedTile;
/**  inputImage  inputCenter  inputAngle  inputAcuteAngle(acute 急性的)  inputWidth */
UIKIT_EXTERN NSString *const LJCIFourfoldReflectedTile;
/**  inputImage  inputCenter  inputAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCIFourfoldRotatedTile;
/**  inputImage  inputCenter  inputAngle  inputAcuteAngle(acute 急性的)  inputWidth */
UIKIT_EXTERN NSString *const LJCIFourfoldTranslatedTile;
/**  (glide 滑翔)inputImage  inputCenter  inputAngle  inputWidth  */
UIKIT_EXTERN NSString *const LJCIGlideReflectedTile;
/**  (Kaleidoscope 万花筒)  inputImage  inputCount  inputCenter  inputAngle*/
UIKIT_EXTERN NSString *const LJCIKaleidoscope;//iOS 9
/**  (欧普艺术（OP Art）又被称为视幻艺术或光效应艺术，是使用光学的技术营造出奇异的艺术效果)inputImage  inputCenter  inputScale  inputAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCIOpTile;//iOS 9
/**  (parallelogram 平行四边形) inputImage  inputCenter  inputAngle  inputAcuteAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCIParallelogramTile;//iOS 9
/**  (perspective 透视)inputImage  (CIAttributeTypePosition)inputTopLeft  inputTopRight  inputBottomRight  inputBottomLeft */
UIKIT_EXTERN NSString *const LJCIPerspectiveTile;
/**  (Sixfold 六重) inputImage  inputCenter  inputAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCISixfoldReflectedTile;
/**  inputImage  inputCenter  inputAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCISixfoldRotatedTile;
/**  (三角形万花筒)inputImage  inputPoint  inputSize  inputRotation  inputDecay(衰退 腐烂) */
UIKIT_EXTERN NSString *const LJCITriangleKaleidoscope;
/**  inputImage  inputCenter  inputAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCITriangleTile;//iOS 9
/**  inputImage  inputCenter  inputAngle  inputWidth */
UIKIT_EXTERN NSString *const LJCITwelvefoldReflectedTile;


#pragma mark - ================ CICategoryGenerator(发生器 无inputImage) ==================
/**  (aztec code 一种二维码) inputMessage(NSData)  inputCorrectionLevel(5~95)  inputLayers(32~1)  inputCompactStyle(0~1) */
UIKIT_EXTERN NSString *const LJCIAztecCodeGenerator;//iOS 8
/**  (棋盘) inputCenter  inputColor0  inputColor1  inputWidth  inputSharpness（锐度） */
UIKIT_EXTERN NSString *const LJCICheckerboardGenerator;
/**  (条形码) inputMessage  inputQuietSpace */
UIKIT_EXTERN NSString *const LJCICode128BarcodeGenerator;//iOS 8
/**  (纯色图片) inputColor  */
UIKIT_EXTERN NSString *const LJCIConstantColorGenerator;
/**  (lenticular透镜状 halo光环)inputCenter  inputColor  inputHaloOverlap  inputHaloRadius  inputHaloWidth  inputStriationContrast  inputStriationStrength(条纹强度)  inputTime*/
UIKIT_EXTERN NSString *const LJCILenticularHaloGenerator;//iOS 9
/** (PDF417条码 高密度、高信息含量的) inputMessage  inputMinWidth  inputMaxWidth  inputMinHeight  inputMaxHeight  inputDataColumns  inputRows   inputPreferredAspectRatio  inputCompactionMode  inputCompactStyle  inputCorrectionLevel(0~8)  inputAlwaysSpecifyCompaction*/
UIKIT_EXTERN NSString *const LJCIPDF417BarcodeGenerator;//iOS 9
/**  inputMessage  inputCorrectionLevel(NSString level L, M, Q, or H) */
UIKIT_EXTERN NSString *const LJCIQRCodeGenerator;//iOS 7
/**  无属性 生成随机图 */
UIKIT_EXTERN NSString *const LJCIRandomGenerator;
/**  inputCenter  inputColor  inputRadius  inputCrossScale(0~100)  inputCrossAngle  inputCrossOpacity(0~-8)  inputCrossWidth(0.5~10)  inputEpsilon(0~-8) */
UIKIT_EXTERN NSString *const LJCIStarShineGenerator;
/**  (stripes 条纹布) inputCenter  inputColor0  inputColor1  inputWidth  inputSharpness */
UIKIT_EXTERN NSString *const LJCIStripesGenerator;
/** (阳光)(striation 条纹 contrast 对比) inputCenter  inputColor  inputSunRadius  inputMaxStriationRadius(0~10)  inputStriationStrength(0~3)  inputStriationContrast(0~5)  inputTime */
UIKIT_EXTERN NSString *const LJCISunbeamsGenerator;//iOS 9


#pragma mark - ================ CICategoryReduction(减少) ==================
/**  (返回一个单像素的图片)inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIAreaAverage;//iOS 9
/**  (histogram柱状图)inputImage  inputExtent  inputCount  inputScale */
UIKIT_EXTERN NSString *const LJCIAreaHistogram;//iOS 8
/**  (返回一个单像素的图片)inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIAreaMaximum;//iOS 9
/**  (返回一个单像素的图片)inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIAreaMaximumAlpha;//iOS 9
/**  (返回一个单像素的图片)inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIAreaMinimum;//iOS 9
/**  (返回一个单像素的图片)inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIAreaMinimumAlpha;//iOS 9
/**  (返回 一个像素高的图片)inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIColumnAverage;//iOS 9
/**  inputImage  inputHeight  inputHighLimit  inputLowLimit */
UIKIT_EXTERN NSString *const LJCIHistogramDisplayFilter;//iOS 8
/**  (返回 一个像素高的图片)inputImage  inputExtent */
UIKIT_EXTERN NSString *const LJCIRowAverage;//iOS 9

#pragma mark - ================ CICategoryGradient(梯度 生成图片的 无需inputImage) ==================
/**  (gaussian高斯) inputCenter  inputColor0  inputColor1  inputRadius */
UIKIT_EXTERN NSString *const LJCIGaussianGradient;
/**  (hue saturation色彩饱和度)  inputColorSpace  inputDither(发抖)  inputRadius  inputSoftness  inputValue   */
UIKIT_EXTERN NSString *const LJCIHueSaturationValueGradient;//iOS 10
/**  inputPoint0  inputPoint1  inputColor0  inputColor1 */
UIKIT_EXTERN NSString *const LJCILinearGradient;
/**  inputCenter  inputRadius0  inputRadius1  inputColor0  inputColor1 */
UIKIT_EXTERN NSString *const LJCIRadialGradient;
/**  (smooth 光滑)inputPoint0  inputPoint1  inputColor0  inputColor1 */
UIKIT_EXTERN NSString *const LJCISmoothLinearGradient;

#pragma mark - ================ CICategoryStylize(程式化 风格化) ==================
/**  inputImage  inputBackgroundImage  inputMaskImage */
UIKIT_EXTERN NSString *const LJCIBlendWithAlphaMask;
/**  inputImage  inputBackgroundImage  inputMaskImage  */
UIKIT_EXTERN NSString *const LJCIBlendWithMask;
/**  (软化一个图片)inputImage  inputRadius  inputIntensity */
UIKIT_EXTERN NSString *const LJCIBloom;
/**  (模拟漫画图)inputImage */
UIKIT_EXTERN NSString *const LJCIComicEffect;//iOS 9
/**  (Convolution 卷积)inputImage  inputWeights[0 0 0 0 1 0 0 0 0]  inputBias */
UIKIT_EXTERN NSString *const LJCIConvolution3X3;
/**  inputImage  inputWeights [0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0]  inputBias */
UIKIT_EXTERN NSString *const LJCIConvolution5X5;
/**  inputImage  inputWeights  inputBias */
UIKIT_EXTERN NSString *const LJCIConvolution7X7;//iOS 9
/**  inputImage  inputWeights[0 0 0 0 1 0 0 0 0]  inputBias */
UIKIT_EXTERN NSString *const LJCIConvolution9Horizontal;
/**  inputImage  inputWeights[0 0 0 0 1 0 0 0 0]  inputBia */
UIKIT_EXTERN NSString *const LJCIConvolution9Vertical;
/**  (crystallize 结晶)马赛克的感觉 inputImage  inputRadius  inputCenter  */
UIKIT_EXTERN NSString *const LJCICrystallize;//iOS 9
/**  (突出一点，周围模糊)inputImage  inputPoint0  inputPoint1  inputSaturation  inputUnsharpMaskRadius  inputUnsharpMaskIntensity  inputRadius */
UIKIT_EXTERN NSString *const LJCIDepthOfField;//iOS 9
/**  (描出轮廓 颜色变深)inputImage  inputIntensity */
UIKIT_EXTERN NSString *const LJCIEdges;//iOS 9
/**  (描出轮廓 黑白)inputImage  inputRadius */
UIKIT_EXTERN NSString *const LJCIEdgeWork;//iOS 9
/**  (gloom 阴暗)  inputImage  inputRadius  inputIntensity */
UIKIT_EXTERN NSString *const LJCIGloom;
/**  (去除黑色 保留白色并且有过度)inputImage  inputRadius */
UIKIT_EXTERN NSString *const LJCIHeightFieldFromMask;//iOS 9
/**  (六边形 像素化  变模糊)  inputImage  inputCenter  inputScale */
UIKIT_EXTERN NSString *const LJCIHexagonalPixellate;//iOS 9
/**  (阴影变亮)inputImage  inputHighlightAmount  inputShadowAmount */
UIKIT_EXTERN NSString *const LJCIHighlightShadowAdjust;
/**  (素描图 的样子)inputImage  inputNRNoiseLevel  inputNRSharpness(锐度)  inputEdgeIntensity   inputThreshold  inputContrast（对比） */
UIKIT_EXTERN NSString *const LJCILineOverlay;//iOS 9
/**  inputImage inputCenter  inputScale */
UIKIT_EXTERN NSString *const LJCIPixellate;
/**  (点状化 拼图的感觉)inputImage  inputRadius  inputCenter */
UIKIT_EXTERN NSString *const LJCIPointillize;//iOS 9
/**  (替换材质)  inputImage  inputShadingImage  inputScale */
UIKIT_EXTERN NSString *const LJCIShadedMaterial;//iOS 9
/**  (用颜色 替换颜色)inputImage
 inputCenterColor1  inputReplacementColor1  inputCloseness1  inputContrast1  
 inputCenterColor2  inputReplacementColor2  inputCloseness2  inputContrast2  
 inputCenterColor3  inputReplacementColor3  inputCloseness3  inputContrast3 */
UIKIT_EXTERN NSString *const LJCISpotColor;//iOS 9
/**  (点光源的效果)inputImage  inputLightPosition  inputLightPointsAt  inputBrightness  inputConcentration  inputColor */
UIKIT_EXTERN NSString *const LJCISpotLight;//iOS 9

#pragma mark - ================ CICategorySharpen(削尖) ==================
/**  (通过锐化增加图像细节)inputImage  inputSharpness */
UIKIT_EXTERN NSString *const LJCISharpenLuminance;
/**  (增加图像中不同颜色的像素之间的边缘的对比度)inputImage  inputRadius  inputIntensity */
UIKIT_EXTERN NSString *const LJCIUnsharpMask;


#pragma mark - ================ CICategoryBlur(使模糊) ==================
/**  (box 箱)inputImage  inputRadius */
UIKIT_EXTERN NSString *const LJCIBoxBlur;//iOS 9
/**  (disc 圆盘)inputImage  inputRadius */
UIKIT_EXTERN NSString *const LJCIDiscBlur;//iOS 9
/**  inputImage  inputRadius */
UIKIT_EXTERN NSString *const LJCIGaussianBlur;
/**  inputImage  inputMask  inputRadius */
UIKIT_EXTERN NSString *const LJCIMaskedVariableBlur;//Mac 10.10
/**  (计算一组相邻像素的中值，并用中值替换每个像素值。 变清晰)inputImage  */
UIKIT_EXTERN NSString *const LJCIMedianFilter;//iOS 9
/**  (motion手势  橡皮擦擦过的效果)inputImage   inputRadius  inputAngle*/
UIKIT_EXTERN NSString *const LJCIMotionBlur;//iOS 8.3
/**  (让图片更清晰)inputImage  inputNoiseLevel(0~0.1)  inputSharpness */
UIKIT_EXTERN NSString *const LJCINoiseReduction;//iOS 9
/**  (高速运动 的效果)inputImage  inputCenter  inputAmount */
UIKIT_EXTERN NSString *const LJCIZoomBlur;//iOS 8.3







