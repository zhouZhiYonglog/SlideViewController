//
//  SubViewController.m
//  SlideViewController
//
//  Created by 周智勇 on 17/2/27.
//  Copyright © 2017年 周智勇. All rights reserved.
//

#import "SubViewController.h"
#import "TestPushViewController.h"
#define RandColor RGBColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
#define RGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = RandColor;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.frame = CGRectMake(100, 100, 30, 30);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)push{
    TestPushViewController *vc = [[TestPushViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


@end
