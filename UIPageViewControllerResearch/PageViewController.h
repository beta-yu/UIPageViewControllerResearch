//
//  PageViewController.h
//  UIPageViewControllerResearch
//
//  Created by qiyu on 2020/1/22.
//  Copyright © 2020 com.qiyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface PageViewController : UIPageViewController

@property (nonatomic, strong) NSMutableArray<UIViewController *> *contentViewControllers;

@property (nonatomic, readonly) UIViewController *selectedViewController;
@property (nonatomic, readonly) NSInteger selectedIndex;

@end

NS_ASSUME_NONNULL_END
