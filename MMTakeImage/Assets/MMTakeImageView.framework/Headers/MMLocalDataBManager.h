//
//  MMLocalDataBManager.h
//  Hello
//
//  Created by nana on 2020/9/15.
//  Copyright © 2020 nana. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMLocalDataBManager : NSObject
/// 单利
+ (instancetype)sharedManager ;
/// objectKey updataData 必须填写, ID为必须唯一
- (BOOL)addWithID:(NSInteger)ID objectKey:(NSString *)objectKey updateData:(NSData *)updataData infoDict:(NSDictionary *)infoDict;
/// objectKey updataData 必须填写, ID为必须唯一
- (BOOL)addWithObjectKey:(NSString *)objectKey updateData:(NSData *)updataData infoDict:(NSDictionary *)infoDict;
///objectKey updataData 必须填写, ID为 自增加
- (BOOL)addWithObjectKey:(NSString *)objectKey updateData:(NSData *)updataData;
/// 删除
- (BOOL)deleteWithID:(NSInteger)ID;
/// 查询
- (NSArray *)seleteWithID:(NSInteger)ID;
/// 查询 大于ID的前几条数据
- (NSArray *)seleteWithGreaterThanOrEqualTo:(NSInteger)ID  limit:(NSInteger)limit;
/// 查询 包含objectKey 的前几条数据
- (NSArray *)selectWithLikeObjectKey:(NSString *)objectKey limit:(NSInteger)limit;
@end

NS_ASSUME_NONNULL_END
