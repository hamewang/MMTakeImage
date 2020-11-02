//
//  MMViewController.m
//  MMTakeImage
//
//  Created by 304635659@qq.com on 10/12/2020.
//  Copyright (c) 2020 304635659@qq.com. All rights reserved.
//

#import "MMViewController.h"
#import "MMTakeViewController.h"

#import "MMTakeViewController.h"
#import "MMCompViewController.h"

#import <MMTakeImageView/MMInputCameraModel.h>
#import <MMTakeImageView/MMInputContrastModel.h>



@interface MMViewController ()
@property(nonatomic, assign)NSInteger mid;
@property(nonatomic, assign)NSInteger cid;
@property(nonatomic, assign)NSInteger cgid;
@end

@implementation MMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    
}
- (void)setupUI {
//    CGRect b =[[[UIApplication sharedApplication] delegate] window].bounds;
//    NSLog(@"%@",NSStringFromCGRect(b));
    UIButton *takeBtn = [[UIButton alloc] init];
    [takeBtn setTitle:@"拍照" forState:UIControlStateNormal];
    takeBtn.backgroundColor = [UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1];
    [takeBtn addTarget:self action:@selector(takeBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:takeBtn];
    takeBtn.frame = CGRectMake(100, 100, 100, 100);
    
    UIButton *compBtn = [[UIButton alloc] init];
    [compBtn setTitle:@"对比" forState:UIControlStateNormal];
    compBtn.backgroundColor = [UIColor colorWithRed:drand48() green:drand48() blue:drand48() alpha:1];
    [compBtn addTarget:self action:@selector(compBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:compBtn];
    compBtn.frame = CGRectMake(300, 100, 100, 100);
    
}
- (void)takeBtnClick:(UIButton *)btn {
    MMTakeViewController *vc = [[MMTakeViewController alloc] init];
    
    MMInputCameraModel *model = [[MMInputCameraModel alloc] init];
    model.mid = 5332;
//    model.cname = @"wbx";
    model.cid = 827767;
    model.spread = @"xxxxx";
    model.token = @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQyNDEwMDIsImp0aSI6IjUzMzIifQ.Dq7JRd-558SnR88Pqnph7aiDZno3jEIguHBbEHTH-PM";
    vc.inputModel = model;
    __weak __typeof__(self) weakSelf = self;
    vc.takeBlock = ^(BOOL takeStatus, NSDictionary * _Nonnull outputDict) {
        __strong __typeof(weakSelf)strongSelf = weakSelf;
        strongSelf.cid = [outputDict[@"cid"] intValue];
        strongSelf.cgid = [outputDict[@"cgid"] intValue];
        NSLog(@"%@",outputDict);
    };
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)compBtnClick:(UIButton *)btn {
    MMCompViewController *vc = [[MMCompViewController alloc] init];
    MMInputContrastModel *inputModel = [[MMInputContrastModel alloc] init];
    inputModel.mid = 5332;
    inputModel.cid =  827767;self.cid;
    inputModel.cgid = 1326201;self.cgid;
    inputModel.spread = @"xxxxx";
    inputModel.token = @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MDQyNDEwMDIsImp0aSI6IjUzMzIifQ.Dq7JRd-558SnR88Pqnph7aiDZno3jEIguHBbEHTH-PM";
    vc.inputModel = inputModel;
    [self.navigationController pushViewController:vc animated:YES];
}

@end
