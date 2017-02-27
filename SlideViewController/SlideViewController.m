
//
//  SlideViewController.m
//  SlideViewController
//
//  Created by 周智勇 on 17/2/27.
//  Copyright © 2017年 周智勇. All rights reserved.
//

#import "SlideViewController.h"
#import "SubViewController.h"


@interface SlideViewController ()

@end

@implementation SlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"滑动视图控制器";
    
    self.titlesArr = [NSArray arrayWithObjects:@"标签一",@"标签二",@"标签三",@"标签四",@"标签五",@"标签六",@"标签七",@"标签八", nil];
    [self updateSuperTitleAry];
}

- (void)addChildViewController{
    for (int i = 0; i < self.titlesArr.count; i++) {
        SubViewController * vc = [[SubViewController alloc] init];
        vc.title  =  self.titlesArr[i];
        [self addChildViewController:vc];
    }
}



@end
