//
//  MMInputContrastModel.h
//  MMContrast
//
//  Created by nana on 2020/10/29.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMInputContrastModel : NSObject
/// 用户ID: 必填
@property(nonatomic, assign)NSInteger mid;
/// 顾客iD:  必填
@property(nonatomic, assign)NSInteger cid;
/// 顾客案例组: 必填
@property(nonatomic, assign)NSInteger cgid;
/// 第三方透传字段::非必填
@property(nonatomic, strong)NSString *spread;
/// 第三方获取token:必填
@property(nonatomic, strong)NSString *token;

@end

NS_ASSUME_NONNULL_END
