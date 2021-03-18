//
//  MMTakeImageView.h
//  MMCamera_Example
//
//  Created by nana on 2020/10/10.
//  Copyright © 2020 304635659@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MMInputCameraModel.h"

NS_ASSUME_NONNULL_BEGIN
///上传完成阿里云图片通知
extern NSString *const kNotification_UpLoadImageToAliyunOSS;
/// 准备生成AI报告通知
extern NSString *const kNotification_PrepareAIReport;
/// 拍照条件 1.inputModel 比填, 2.必须人脸,3.蓝牙必须连上moreme硬件,且亮灯,4.定位必须打开获取到经纬度
@interface MMTakeImageView : UIView
///必填
@property(nonatomic, strong)MMInputCameraModel *inputModel;
/// 拍照到创建总个流程回调，takeStatus:YES 开始拍照,NO 结束拍照 .outputDict: cid:为顾客ID , cgid:顾客案例组ID.
@property(nonatomic, copy)void(^takeBlock)(BOOL takeStatus, NSDictionary *outputDict);
/// 单独拍照回掉
@property(nonatomic, copy)void(^takeImageBlock)(BOOL takeImageStatus);
/// 拍照存储的数组
@property(nonatomic, strong)NSMutableArray *outputImageArray;
/// appdelegate 调用此方法初始化SDK
+ (void)initializationSDK;
/// 创建展示视图
- (instancetype)initWithFrame:(CGRect)frame InputModel:(MMInputCameraModel *)inputModel;
@end

NS_ASSUME_NONNULL_END
