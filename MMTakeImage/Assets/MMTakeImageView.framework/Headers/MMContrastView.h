//
//  MMContrastView.h
//  MMContrast
//
//  Created by nana on 2020/10/19.
//

#import <UIKit/UIKit.h>
#import "MMInputContrastModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MMContrastView : UIView

- (instancetype)initWithFrame:(CGRect)frame inputModel:(MMInputContrastModel *)inputModel;
@end

NS_ASSUME_NONNULL_END
