//
//  MMInputCameraModel.h
//  MMCamera_Example
//
//  Created by nana on 2020/10/9.
//  Copyright © 2020 304635659@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMInputCameraModel : NSObject
/// 用户ID: 必填
@property(nonatomic, assign)NSInteger mid;
/// 顾客iD:  为0时, 则cname必填, 非0时,则cname 不必填
@property(nonatomic, assign)NSInteger cid;
/// 顾客名字: 必填
@property(nonatomic, strong)NSString *cname;
/// 顾客年龄:非必填
@property(nonatomic, strong)NSString *age;
/// 顾客生日:非必填
@property(nonatomic, strong)NSString *birthday;
/// 顾客电话:非必填
@property(nonatomic, strong)NSString *telphone;
/// 顾客邮箱:非必填
@property(nonatomic, strong)NSString *email;
/// 第三方透传字段::非必填
@property(nonatomic, strong)NSString *spread;
/// 第三方获取token:必填
@property(nonatomic, strong)NSString *token;

@end

NS_ASSUME_NONNULL_END
