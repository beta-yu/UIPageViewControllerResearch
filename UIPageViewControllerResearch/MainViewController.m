//
//  MainViewController.m
//  UIPageViewControllerResearch
//
//  Created by qiyu on 2020/1/22.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import "MainViewController.h"
#import "PageViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    PageViewController *pageViewController = [[PageViewController alloc] init];
    
    for (NSInteger i = 1; i <= 2; ++i) {
        ViewController *viewController = [[ViewController alloc] init];
        viewController.label.text = [NSString stringWithFormat:@"%ld", i];
        [viewController.label sizeToFit];
        [pageViewController.contentViewControllers addObject:viewController];
    }
    UIViewController *viewController = pageViewController.contentViewControllers[1];
    [pageViewController setViewControllers:@[viewController] direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    pageViewController.view.frame = self.view.bounds;
    [self addChildViewController:pageViewController];
    [self.view addSubview:pageViewController.view];
}

@end
