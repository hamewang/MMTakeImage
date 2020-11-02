//
//  MMTakeViewController.m
//  MMContrast
//
//  Created by nana on 2020/10/29.
//

#import "MMTakeViewController.h"
//#import "MMTakeImageView.h"
#import <MMTakeImageView/MMTakeImageView.h>

@interface MMTakeViewController ()

@end

@implementation MMTakeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    MMTakeImageView *tView = [[MMTakeImageView alloc] initWithFrame:self.view.bounds InputModel:self.inputModel];
    tView.takeBlock = self.takeBlock;
    [self.view addSubview:tView];
}



@end
