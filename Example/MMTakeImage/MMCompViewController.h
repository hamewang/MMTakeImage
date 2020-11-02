//
//  MMCompViewController.h
//  MMContrast
//
//  Created by nana on 2020/10/29.
//

#import <UIKit/UIKit.h>

//#import "MMInputContrastModel.h"
#import <MMTakeImageView/MMInputContrastModel.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMCompViewController : UIViewController
@property(nonatomic, strong) MMInputContrastModel *inputModel;

@end

NS_ASSUME_NONNULL_END
