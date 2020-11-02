//
//  MMCompViewController.m
//  MMContrast
//
//  Created by nana on 2020/10/29.
//

#import "MMCompViewController.h"
//#import "MMContrastView.h"
#import <MMTakeImageView/MMContrastView.h>

@interface MMCompViewController ()

@end

@implementation MMCompViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MMContrastView *cview = [[MMContrastView alloc] initWithFrame:self.view.bounds inputModel:self.inputModel];
    [self.view addSubview:cview];
    // Do any additional setup after loading the view.
}

//- (void)dealloc {
//    NSLog(@"%s",__func__);
//}

@end
