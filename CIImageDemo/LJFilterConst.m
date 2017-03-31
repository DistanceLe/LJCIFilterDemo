//
//  LJFilterConst.m
//  CIImageDemo
//
//  Created by LiJie on 2017/3/30.
//  Copyright © 2017年 LiJie. All rights reserved.
//

#import "LJFilterConst.h"

#pragma mark - ================ CICategoryDistortionEffect(distortion 扭曲, 失真) ==================
/**  (bump 肿块，隆起) -> inputCenter, inputImage, inputRadius, inputScale*/
NSString *const LJCIBumpDistortion = @"CIBumpDistortion";
/**  inputAngle, inputCenter inputImage  inputRadius  inputScale */
NSString *const LJCIBumpDistortionLinear = @"CIBumpDistortionLinear";
/**  (splash 斑点)inputCenter inputImage  inputRadius*/
NSString *const LJCICircleSplashDistortion = @"CICircleSplashDistortion";
/**  (circularWrap 环形包) inputAngle  inputCenter inputImage  inputRadius*/
NSString *const LJCICircularWrap = @"CICircularWrap";//iOS 9
/**  (displacement 代替 置换） inputDisplacementImage inputImage inputScale*/
NSString *const LJCIDisplacementDistortion = @"CIDisplacementDistortion";//iOS 9
/**  (droste德罗斯特，一种递归的视觉形式)  inputImage  inputInsetPoint0  inputInsetPoint1  inputPeriodicity(周期数)  inputRotation  inputStrands  inputZoom*/
NSString *const LJCIDroste = @"CIDroste";//iOS 9
/**  (glass 玻璃 inputImage  inputTexture(CIImage) inputCenter  inputScale) */
NSString *const LJCIGlassDistortion = @"CIGlassDistortion";//iOS 8
/**  (lozenge 菱形玻璃) inputImage   inputPoint0   inputPoint1  inputRadius inputRefraction(折射) */
NSString *const LJCIGlassLozenge = @"CIGlassLozenge";//iOS 9
/**  (hole孔 洞) inputImage  inputCenter  inputRadius */
NSString *const LJCIHoleDistortion = @"CIHoleDistortion";
/**  (tunnel 时光隧道) inputImage  inputCenter   inputRotation  inputRadius*/
NSString *const LJCILightTunnel = @"CILightTunnel";
/**  (stretch拉伸) inputBreakpoint0   inputBreakpoint1  inputGrowAmount  inputImage */
NSString *const LJCINinePartStretched = @"CINinePartStretched";//iOS 10
/**  (tiled 平铺) inputBreakpoint0  inputBreakpoint1  inputFlipYTiles  inputGrowAmount(CIVector[100 100]) inputImage*/
NSString *const LJCINinePartTiled = @"CINinePartTiled";//iOS 10
/**  (pinch 捏)  inputImage inputCenter  inputRadius  inputScale */
NSString *const LJCIPinchDistortion = @"CIPinchDistortion";
/**  拉伸修剪  inputImage inputSize inputCropAmount inputCenterStretchAmount */
NSString *const LJCIStretchCrop = @"CIStretchCrop";//iOS 9
/**  (torus lens 圆环透镜) inputImage  inputCenter  inputRadius  inputWidth  inputRefraction */
NSString *const LJCITorusLensDistortion = @"CITorusLensDistortion";//iOS 9
/**  (twirl 螺旋)   inputImage  inputCenter  inputRadius  inputAngle */
NSString *const LJCITwirlDistortion = @"CITwirlDistortion";
/**  (vortex 涡流) inputImage   inputCenter  inputRadius  inputAngle*/
NSString *const LJCIVortexDistortion = @"CIVortexDistortion";


#pragma mark - ================ CICategoryGeometryAdjustment(几何 调整) ==================
/**  仿射变换 inputImage   inputTransform(NSValue) */
NSString *const LJCIAffineTransform = @"CIAffineTransform";
/**  修剪 inputImage  inputRectangle (CIVector[0 0 300 300]) */
NSString *const LJCICrop = @"CICrop";
/**  (lanczos算法：对称矩阵 -> 对称三对角矩阵) inputImage   inputScale inputAspectRatio */
NSString *const LJCILanczosScaleTransform = @"CILanczosScaleTransform";
/**  透视 反转纠正，(四个点)inputImage  inputTopLeft  inputTopRight inputBottomRight inputBottomLeft */
NSString *const LJCIPerspectiveCorrection = @"CIPerspectiveCorrection";//iOS 8
/**  inputImage inputTopLeft  inputTopRight inputBottomRight inputBottomLeft */
NSString *const LJCIPerspectiveTransform = @"CIPerspectiveTransform";
/**  inputExtent(CIAttributeTypeRectangle[0 0 300 300]) inputImage inputTopLeft  inputTopRight inputBottomRight inputBottomLeft */
NSString *const LJCIPerspectiveTransformWithExtent = @"CIPerspectiveTransformWithExtent";
/**  (straighten 变直) inputImage  inputAngle */
NSString *const LJCIStraightenFilter = @"CIStraightenFilter";


#pragma mark - ================ CICategoryCompositeOperation(合成操作) ==================
/**  添加混合 inputImage  inputBackgroundImage */
NSString *const LJCIAdditionCompositing = @"CIAdditionCompositing";
/**  颜色混合   */
NSString *const LJCIColorBlendMode = @"CIColorBlendMode";
/**  颜色灼烧混合  */
NSString *const LJCIColorBurnBlendMode = @"CIColorBurnBlendMode";
/**  dodge 避开 */
NSString *const LJCIColorDodgeBlendMode = @"CIColorDodgeBlendMode";
/**  模糊 变黑  */
NSString *const LJCIDarkenBlendMode = @"CIDarkenBlendMode";
/**  不同 */
NSString *const LJCIDifferenceBlendMode = @"CIDifferenceBlendMode";
/**  分开  */
NSString *const LJCIDivideBlendMode = @"CIDivideBlendMode";
/**  exclusion排除 */
NSString *const LJCIExclusionBlendMode = @"CIExclusionBlendMode";
/**  硬光 */
NSString *const LJCIHardLightBlendMode = @"CIHardLightBlendMode";
/**  hue 色度 */
NSString *const LJCIHueBlendMode = @"CIHueBlendMode";
/**  明亮 */
NSString *const LJCILightenBlendMode = @"CILightenBlendMode";
/**  线性灼烧 */
NSString *const LJCILinearBurnBlendMode = @"CILinearBurnBlendMode";
/**  线性 避开 */
NSString *const LJCILinearDodgeBlendMode = @"CILinearDodgeBlendMode";
/**  luminosity 亮度 */
NSString *const LJCILuminosityBlendMode = @"CILuminosityBlendMode";
/**  最大 */
NSString *const LJCIMaximumCompositing = @"CIMaximumCompositing";
/**  最小 取最小的那一张图片 */
NSString *const LJCIMinimumCompositing = @"CIMinimumCompositing";
/**  增加，乘 */
NSString *const LJCIMultiplyBlendMode = @"CIMultiplyBlendMode";
/**  叠加合成 保留一张 */
NSString *const LJCIMultiplyCompositing = @"CIMultiplyCompositing";
/**  覆盖 */
NSString *const LJCIOverlayBlendMode = @"CIOverlayBlendMode";
/**  针 */
NSString *const LJCIPinLightBlendMode = @"CIPinLightBlendMode";
/**  saturation 饱和 */
NSString *const LJCISaturationBlendMode = @"CISaturationBlendMode";
/**  屏 */
NSString *const LJCIScreenBlendMode = @"CIScreenBlendMode";
/**  柔光 */
NSString *const LJCISoftLightBlendMode = @"CISoftLightBlendMode";
/**  直接覆盖，不混合 */
NSString *const LJCISourceAtopCompositing = @"CISourceAtopCompositing";
/**  保留重叠部分，且不混合 */
NSString *const LJCISourceInCompositing = @"CISourceInCompositing";
/**  去除重叠部分，不混合 */
NSString *const LJCISourceOutCompositing = @"CISourceOutCompositing";
/**  直接覆盖，不混合 */
NSString *const LJCISourceOverCompositing = @"CISourceOverCompositing";
/**  减去 相同的颜色 */
NSString *const LJCISubtractBlendMode = @"CISubtractBlendMode";//iOS 8


#pragma mark - ================ CICategoryHalftoneEffect(中间色) ==================
/**  圆形半色调屏幕 inputImage  inputCenter  inputWidth  inputSharpness(锐度) */
NSString *const LJCICircularScreen = @"CICircularScreen";
/**  inputImage  inputCenter  inputWidth  inputAngle   inputSharpness  inputGCR  inputUCR */
NSString *const LJCICMYKHalftone = @"CICMYKHalftone";//iOS 9
/**  inputImage  inputCenter  inputAngle  inputWidth  inputSharpness */
NSString *const LJCIDotScreen = @"CIDotScreen";
/**  hatched 影线 inputImage  inputCenter  inputAngle  inputWidth  inputSharpness */
NSString *const LJCIHatchedScreen = @"CIHatchedScreen";
/**  inputImage  inputCenter  inputAngle  inputWidth  inputSharpness */
NSString *const LJCILineScreen = @"CILineScreen";

#pragma mark - ================ CICategoryColorAdjustment(颜色调节) ==================
/**  让颜色保持在一个指定范围 inputImage  inputMinComponents [0 0 0 0]  inputMaxComponents[1 1 1 1]*/
NSString *const LJCIColorClamp = @"CIColorClamp";
/**  调节颜色 inputImage  inputSaturation(饱和度)  inputBrightness  inputContrast(对比度) */
NSString *const LJCIColorControls = @"CIColorControls";
/**  matrix(矩阵 RGBA)  inputImage  inputRVector[1 0 0 0]  inputGVector[0 1 0 0]  inputBVector[0 0 1 0]  inputAVector[0 0 0 1]  inputBiasVector[0 0 0 0](偏斜率)
 s.r = dot(s, redVector)  s = s + bias*/
NSString *const LJCIColorMatrix = @"CIColorMatrix";
/**  (polynomial(多项)coefficient(系数)） inputImage  inputRedCoefficients[0 1 0 0]  inputGreenCoefficients[0 1 0 0]  inputBlueCoefficients[0 1 0 0]    inputAlphaCoefficients[0 1 0 0]
 r = rCoeff[0] + rCoeff[1] * r + rCoeff[2] * r*r + rCoeff[3] * r*r*r */
NSString *const LJCIColorPolynomial = @"CIColorPolynomial";
/**  (exposure 曝光)  inputImage  inputEV   s.rgb * pow(2.0, ev)*/
NSString *const LJCIExposureAdjust = @"CIExposureAdjust";
/**  (gamma 伽玛) inputImage  inputPower    pow(s.rgb, vec3(power)) */
NSString *const LJCIGammaAdjust = @"CIGammaAdjust";
/**  (hue 色调 色彩)  inputImage  inputAngle */
NSString *const LJCIHueAdjust = @"CIHueAdjust";
/**  (toneCurve 色度曲线)  inputImage （Maps color intensity from a linear gamma curve to the sRGB color space.）*/
NSString *const LJCILinearToSRGBToneCurve = @"CILinearToSRGBToneCurve";
/**  inputImage  (Maps color intensity from the sRGB color space to a linear gamma curve) */
NSString *const LJCISRGBToneCurveToLinear = @"CISRGBToneCurveToLinear";
/**  色温 色彩(neutral 中性)， inputImage  inputNeutral[6500, 0]  inputTargetNeutral [6500, 0]  */
NSString *const LJCITemperatureAndTint = @"CITemperatureAndTint";
/**  色度曲线  inputImage (CIAttributeTypeOffset) inputPoint0[0, 0]  inputPoint1[0.25, 0.25]  inputPoint2[0.5, 0.5]  inputPoint3[0.75, 0.75]  inputPoint4[1, 1] */
NSString *const LJCIToneCurve = @"CIToneCurve";
/**  (vibrance 震动)调整饱和度  inputImage  inputAmount */
NSString *const LJCIVibrance = @"CIVibrance";
/**  inputImage  inputColor(CIColor) */
NSString *const LJCIWhitePointAdjust = @"CIWhitePointAdjust";


#pragma mark - ================ CICategoryColorEffect ==================
/**  inputImage  inputRedCoefficients  inputGreenCoefficients  inputBlueCoefficients
 out.r =   in.r * rC[0] +        in.g * rC[1] +        in.b * rC[2]
 + in.r * in.r * rC[3] + in.g * in.g * rC[4] + in.b * in.b * rC[5]
 + in.r * in.g * rC[6] + in.g * in.b * rC[7] + in.b * in.r * rC[8]
 + rC[9]*/
NSString *const LJCIColorCrossPolynomial = @"CIColorCrossPolynomial";
/**  立方体  inputImage  inputCubeDimension  inputCubeData(NSData) */
NSString *const LJCIColorCube = @"CIColorCube";
/**  inputImage  inputCubeDimension  inputCubeData  inputColorSpace(CGColorSpaceRef)  */
NSString *const LJCIColorCubeWithColorSpace = @"CIColorCubeWithColorSpace";
/**  反转 inputImage */
NSString *const LJCIColorInvert = @"CIColorInvert";
/**  inputImage  inputGradientImage(梯度图片) */
NSString *const LJCIColorMap = @"CIColorMap";
/**  monochrome黑白照片  inputImage  inputColor  inputIntensity（程度） */
NSString *const LJCIColorMonochrome = @"CIColorMonochrome";
/**  (posterize 色调分离) inputImage  inputLevels*/
NSString *const LJCIColorPosterize = @"CIColorPosterize";
/**  inputImage  inputColor0  inputColor1 */
NSString *const LJCIFalseColor = @"CIFalseColor";
/**  inputImage   */
NSString *const LJCIMaskToAlpha = @"CIMaskToAlpha";
/**  inputImage   Returns a grayscale image from max(r,g,b).*/
NSString *const LJCIMaximumComponent = @"CIMaximumComponent";
/**  inputImage   Returns a grayscale image from min(r,g,b).*/
NSString *const LJCIMinimumComponent = @"CIMinimumComponent";
/**  (chrome 铬)inputImage    */
NSString *const LJCIPhotoEffectChrome = @"CIPhotoEffectChrome";
/**  (fade 褪色) inputImage */
NSString *const LJCIPhotoEffectFade = @"CIPhotoEffectFade";
/**  (instant 即刻)有点复古的样子 inputImage */
NSString *const LJCIPhotoEffectInstant = @"CIPhotoEffectInstant";
/**  (mono 单通道)黑白照片 inputImage*/
NSString *const LJCIPhotoEffectMono = @"CIPhotoEffectMono";
/**  (noir 悲剧色彩) inputImage */
NSString *const LJCIPhotoEffectNoir = @"CIPhotoEffectNoir";
/**  (强调冷色) inputImage */
NSString *const LJCIPhotoEffectProcess = @"CIPhotoEffectProcess";
/**  (tonal 色调)也是黑白的样子 inputImage */
NSString *const LJCIPhotoEffectTonal = @"CIPhotoEffectTonal";
/**  (强调暖色调)inputImage */
NSString *const LJCIPhotoEffectTransfer = @"CIPhotoEffectTransfer";
/**  sepia 深褐色  inputImage  inputIntensity */
NSString *const LJCISepiaTone = @"CISepiaTone";
/**  (thermal 热的)inputImage */
NSString *const LJCIThermal = @"CIThermal";//iOS 10
/**  vignette晕映  inputImage  inputRadius  inputIntensity */
NSString *const LJCIVignette = @"CIVignette";
/**  inputImage  inputCenter  inputIntensity  inputRadius */
NSString *const LJCIVignetteEffect = @"CIVignetteEffect";
/**  inputImage X射线 */
NSString *const LJCIXRay = @"CIXRay";//iOS 10


#pragma mark - ================ CICategoryTransition(转变) ==================
/**  (accordion手风琴 fold折叠）  inputImage  inputTargetImage  inputBottomHeight  inputNumberOfFolds  inputFoldShadowAmount   inputTime*/
NSString *const LJCIAccordionFoldTransition = @"CIAccordionFoldTransition";//iOS 8
/**  inputImage  inputTargetImage  inputAngle  inputWidth  inputBarOffset(NSNumber)  inputTime */
NSString *const LJCIBarsSwipeTransition = @"CIBarsSwipeTransition";
/**  inputImage  inputTargetImage  inputExtent  inputColor  inputTime  inputAngle   inputWidth  inputOpacity */
NSString *const LJCICopyMachineTransition = @"CICopyMachineTransition";
/** (disintegrate 崩溃) inputImage  inputTargetImage  inputMaskImage  inputTime  inputShadowRadius  inputShadowDensity  inputShadowOffset[0 -10] */
NSString *const LJCIDisintegrateWithMaskTransition = @"CIDisintegrateWithMaskTransition";
/**  (dissolve 溶解)  inputImage  inputTargetImage  inputTime*/
NSString *const LJCIDissolveTransition = @"CIDissolveTransition";
/**  inputImage  inputTargetImage  inputCenter  inputExtent  inputColor  inputTime  inputMaxStriationRadius  inputStriationStrength  inputStriationContrast  inputFadeThreshold */
NSString *const LJCIFlashTransition = @"CIFlashTransition";
/**  inputImage  inputTargetImage  inputCenter  inputTime  inputAngle  inputRadius  inputCompression */
NSString *const LJCIModTransition = @"CIModTransition";
/**  inputImage  inputTargetImage  inputBacksideImage  inputShadingImage  inputExtent  inputTime  inputAngle  inputRadius */
NSString *const LJCIPageCurlTransition = @"CIPageCurlTransition";//iOS 9
/**  inputImage  inputTargetImage  inputBacksideImage  inputExtent  inputTime  inputAngle  inputRadius  inputShadowSize  inputShadowAmount  inputShadowExtent */
NSString *const LJCIPageCurlWithShadowTransition = @"CIPageCurlWithShadowTransition";//iOS 9
/**  (ripple 波纹)inputImage  inputTargetImage   inputShadingImage  inputCenter  inputExtent  inputTime  inputWidth  inputScale */
NSString *const LJCIRippleTransition = @"CIRippleTransition";//iOS 9
/**  inputImage  inputTargetImage  inputExtent  inputColor  inputTime   inputAngle  inputWidth  inputOpacity*/
NSString *const LJCISwipeTransition = @"CISwipeTransition";


#pragma mark - ================ CICategoryTileEffect( 瓦片 ) ==================
/**  inputImage  inputTransform */
NSString *const LJCIAffineClamp = @"CIAffineClamp";
/**  inputImage  inputTransform  */
NSString *const LJCIAffineTile = @"CIAffineTile";
/**  inputImage  inputExtent */
NSString *const LJCIClamp = @"CIClamp";//iOS 10;
/**  inputImage  inputCenter  inputAngle  inputWidth */
NSString *const LJCIEightfoldReflectedTile = @"CIEightfoldReflectedTile";
/**  inputImage  inputCenter  inputAngle  inputAcuteAngle(acute 急性的)  inputWidth */
NSString *const LJCIFourfoldReflectedTile = @"CIFourfoldReflectedTile";
/**  inputImage  inputCenter  inputAngle  inputWidth */
NSString *const LJCIFourfoldRotatedTile = @"CIFourfoldRotatedTile";
/**  inputImage  inputCenter  inputAngle  inputAcuteAngle(acute 急性的)  inputWidth */
NSString *const LJCIFourfoldTranslatedTile = @"CIFourfoldTranslatedTile";
/**  (glide 滑翔)inputImage  inputCenter  inputAngle  inputWidth  */
NSString *const LJCIGlideReflectedTile = @"CIGlideReflectedTile";
/**  (Kaleidoscope 万花筒)  inputImage  inputCount  inputCenter  inputAngle*/
NSString *const LJCIKaleidoscope = @"CIKaleidoscope";//iOS 9
/**  (欧普艺术（OP Art）又被称为视幻艺术或光效应艺术，是使用光学的技术营造出奇异的艺术效果)inputImage  inputCenter  inputScale  inputAngle  inputWidth */
NSString *const LJCIOpTile = @"CIOpTile";//iOS 9
/**  (parallelogram 平行四边形) inputImage  inputCenter  inputAngle  inputAcuteAngle  inputWidth */
NSString *const LJCIParallelogramTile = @"CIParallelogramTile";//iOS 9
/**  (perspective 透视)inputImage  (CIAttributeTypePosition)inputTopLeft  inputTopRight  inputBottomRight  inputBottomLeft */
NSString *const LJCIPerspectiveTile = @"CIPerspectiveTile";
/**  (Sixfold 六重) inputImage  inputCenter  inputAngle  inputWidth */
NSString *const LJCISixfoldReflectedTile = @"CISixfoldReflectedTile";
/**  inputImage  inputCenter  inputAngle  inputWidth */
NSString *const LJCISixfoldRotatedTile = @"CISixfoldRotatedTile";
/**  (三角形万花筒)inputImage  inputPoint  inputSize  inputRotation  inputDecay(衰退 腐烂) */
NSString *const LJCITriangleKaleidoscope = @"CITriangleKaleidoscope";
/**  inputImage  inputCenter  inputAngle  inputWidth */
NSString *const LJCITriangleTile = @"CITriangleTile";//iOS 9
/**  inputImage  inputCenter  inputAngle  inputWidth */
NSString *const LJCITwelvefoldReflectedTile = @"CITwelvefoldReflectedTile";


#pragma mark - ================ CICategoryGenerator(发生器 无inputImage) ==================
/**  (aztec code 一种二维码) inputMessage(NSData)  inputCorrectionLevel(5~95)  inputLayers(32~1)  inputCompactStyle(0~1) */
NSString *const LJCIAztecCodeGenerator = @"CIAztecCodeGenerator";//iOS 8
/**  (棋盘) inputCenter  inputColor0  inputColor1  inputWidth  inputSharpness（锐度） */
NSString *const LJCICheckerboardGenerator = @"CICheckerboardGenerator";
/**  (条形码) inputMessage  inputQuietSpace */
NSString *const LJCICode128BarcodeGenerator = @"CICode128BarcodeGenerator";//iOS 8
/**  (纯色图片) inputColor  */
NSString *const LJCIConstantColorGenerator = @"CIConstantColorGenerator";
/**  (lenticular透镜状 halo光环)inputCenter  inputColor  inputHaloOverlap  inputHaloRadius  inputHaloWidth  inputStriationContrast  inputStriationStrength(条纹强度)  inputTime*/
NSString *const LJCILenticularHaloGenerator = @"CILenticularHaloGenerator";//iOS 9
/** (PDF417条码 高密度、高信息含量的) inputMessage  inputMinWidth  inputMaxWidth  inputMinHeight  inputMaxHeight  inputDataColumns  inputRows   inputPreferredAspectRatio  inputCompactionMode  inputCompactStyle  inputCorrectionLevel(0~8)  inputAlwaysSpecifyCompaction*/
NSString *const LJCIPDF417BarcodeGenerator = @"CIPDF417BarcodeGenerator";//iOS 9
/**  inputMessage  inputCorrectionLevel(NSString level L, M, Q, or H) */
NSString *const LJCIQRCodeGenerator = @"CIQRCodeGenerator";//iOS 7
/**  无属性 生成随机图 */
NSString *const LJCIRandomGenerator = @"CIRandomGenerator";
/**  inputCenter  inputColor  inputRadius  inputCrossScale(0~100)  inputCrossAngle  inputCrossOpacity(0~-8)  inputCrossWidth(0.5~10)  inputEpsilon(0~-8) */
NSString *const LJCIStarShineGenerator = @"CIStarShineGenerator";
/**  (stripes 条纹布) inputCenter  inputColor0  inputColor1  inputWidth  inputSharpness */
NSString *const LJCIStripesGenerator = @"CIStripesGenerator";
/** (阳光)(striation 条纹 contrast 对比) inputCenter  inputColor  inputSunRadius  inputMaxStriationRadius(0~10)  inputStriationStrength(0~3)  inputStriationContrast(0~5)  inputTime */
NSString *const LJCISunbeamsGenerator = @"CISunbeamsGenerator";//iOS 9







