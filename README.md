# MMTakeImage

[![CI Status](https://img.shields.io/travis/304635659@qq.com/MMTakeImage.svg?style=flat)](https://travis-ci.org/304635659@qq.com/MMTakeImage)
[![Version](https://img.shields.io/cocoapods/v/MMTakeImage.svg?style=flat)](https://cocoapods.org/pods/MMTakeImage)
[![License](https://img.shields.io/cocoapods/l/MMTakeImage.svg?style=flat)](https://cocoapods.org/pods/MMTakeImage)
[![Platform](https://img.shields.io/cocoapods/p/MMTakeImage.svg?style=flat)](https://cocoapods.org/pods/MMTakeImage)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MMTakeImage is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MMTakeImage', :git => 'https://github.com/hamewang/MMTakeImage.git',:branch => 'master'
```
## Usage

环境初始化
```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

// 
    [MMTakeImageView initializationSDK];
    return YES;
}
```
拍照
```objective-c
#import <MMTakeImageView/MMTakeImageView.h>

       MMInputCameraModel *model = [[MMInputCameraModel alloc] init];
        model.mid = 5332;
//        model.cname = @"wbx111111";
        model.cid = self.cid; //必填。 第一次cid 没有时，根据cname创建返回。
        model.spread = @"xxxxx";
        model.token = @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MTYwOTcxODcsImp0aSI6IjUzMzIifQ.hw3B0ooz8A55925hDY9iDaMwGtrgiI85izL-Fl5n5x8";
    
    
    MMTakeImageView *tView = [[MMTakeImageView alloc ]initWithFrame:self.view.bounds InputModel:model];
    // 创建顾客案例组 状态返回
    __weak __typeof__(self) weakSelf = self;
    tView.takeBlock = ^(BOOL takeStatus, NSDictionary * _Nonnull outputDict) {
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        strongSelf.cid = [outputDict[@"cid"] intValue];
        strongSelf.cgid = [outputDict[@"cgid"] intValue];
        NSLog(@"xxx %d %@",takeStatus,outputDict);
    };
    /// 拍照 状态返回
    tView.takeImageBlock = ^(BOOL takeImageStatus) {
        NSLog(@"%d", takeImageStatus);
    };


```
大图对比
```objective-c
#import <MMTakeImageView/MMContrastView.h>

MMInputContrastModel *inputModel = [[MMInputContrastModel alloc] init];
inputModel.mid = 5332; //替换 mid
inputModel.cid =  827767; //替换 cid
inputModel.cgid = 1326201; //替换cgid
inputModel.spread = @"xxxxx"; //透传参数，多用于回调网关Token或事件标识
inputModel.token = @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.xx.xx"; //Token 字符串
MMContrastView *cview = [[MMContrastView alloc] initWithFrame:self.view.bounds inputModel:inputModel];
[self.view addSubview:cview];
```
## Author

304635659@qq.com, 304635659@qq.com

## License

MMTakeImage is available under the MIT license. See the LICENSE file for more info.
