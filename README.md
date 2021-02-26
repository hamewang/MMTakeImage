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

```objective-c
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

// 环境初始化
    [MMTakeImageView initializationSDK];
    return YES;
}
```
拍照
```objective-c
#import <MMTakeImageView/MMTakeImageView.h>

/// 拍照
        MMInputCameraModel *inputModel = [MMInputCameraModel new];
         inputModel.mid = 5332; 
//    inputModel.cid = 782813;
         inputModel.cname =@"wb";
         inputModel.token = @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDI3NzQ4OTcsImp0aSI6IjUzMzIifQ.SLq9_fkBESmgKSRLuN2FdjH7mtpeoEHZYXtby1MXXTA";
         inputModel.spread = @"xxxx";
/// 拍照条件 1.inputModel 比填, 2.必须人脸,3.蓝牙必须连上moreme硬件,4.定位必须打开
        MMTakeImageView *takeImageView = [[MMTakeImageView alloc] initWithFrame:self.view.bounds InputModel:inputModel];
        takeImageView.takeBlock = ^(BOOL takeStatus, NSDictionary * _Nonnull outputDict) {
            NSLog(@"%d %@",takeStatus, outputDict);
        };
        [self.view addSubview:takeImageView];
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
