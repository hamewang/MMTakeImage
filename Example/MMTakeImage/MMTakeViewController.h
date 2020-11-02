//
//  MMTakeViewController.h
//  MMContrast
//
//  Created by nana on 2020/10/29.
//

#import <UIKit/UIKit.h>
//#import "MMInputCameraModel.h"
#import <MMTakeImageView/MMInputCameraModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMTakeViewController : UIViewController
@property(nonatomic, strong)MMInputCameraModel *inputModel;
/// 拍照回调takeStatus:YES 开始拍照,NO 结束拍照 .outputDict: cid:为顾客ID , cgid:顾客案例组ID.
@property(nonatomic, copy)void(^takeBlock)(BOOL takeStatus, NSDictionary *outputDict);
@end

NS_ASSUME_NONNULL_END
