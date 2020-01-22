//
//  PageViewController.m
//  UIPageViewControllerResearch
//
//  Created by qiyu on 2020/1/22.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "PageViewController.h"

@interface PageViewController () <UIPageViewControllerDataSource, UIPageViewControllerDelegate>

@property (nonatomic) UIViewController *selectedViewController;
@property (nonatomic) NSInteger selectedIndex;

@end

@implementation PageViewController

- (instancetype)init {
    self = [super initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    if (self) {
        self.contentViewControllers = [NSMutableArray arrayWithCapacity:10];
        self.dataSource = self;
        self.delegate = self;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - UIPageViewControllerDataSource

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSInteger index = [self.contentViewControllers indexOfObject:viewController];
    if (index != NSNotFound && index > 0) {
        return self.contentViewControllers[index-1];
    }
    return nil;
}

- (nullable UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSInteger index = [self.contentViewControllers indexOfObject:viewController];
    if (index != NSNotFound && index < self.contentViewControllers.count - 1) {
        return self.contentViewControllers[index+1];
    }
    return nil;
}

@end
