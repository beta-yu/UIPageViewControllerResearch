//
//  ViewController.m
//  UIPageViewControllerResearch
//
//  Created by qiyu on 2020/1/22.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.label = [[UILabel alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.textColor = [UIColor blueColor];
    self.label.font = [UIFont systemFontOfSize:100.0];
    self.label.center = self.view.center;
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.frame = self.view.frame;
    [self.view addSubview:self.label];
}


@end
