//
//  UIViewController+PageViewLevel.m
//  xgoods
//
//  Created by admin on 2017/5/18.
//  Copyright © 2017年 Look. All rights reserved.
//

#import "UIViewController+PageViewLevel.h"

@implementation UIViewController (PageViewLevel)

-(NSInteger)pvl_pageViewLevel{
    
    NSInteger level=[self findLevelInTabbarController:self];
    
    level=level<0?0:level;
    
    
    UIViewController *parentVC=[self findNavigationControllerParent:self];
    
    
    while (parentVC) {
        level++;
        
        NSInteger tmpLevel = parentVC.pvl_pageViewLevel;
        level+=tmpLevel;
        
        parentVC=[self findNavigationControllerParent:parentVC];;
    }
    
    
    return level;
}

-(NSInteger)findLevelInNavigationController:(UIViewController*)viewController{
    return viewController.navigationController?[viewController.navigationController.viewControllers count]-1:([viewController isKindOfClass:[UINavigationController class]]?[[(UINavigationController*)viewController viewControllers] count]-1: 0);
}

-(NSInteger)findLevelInTabbarController:(UIViewController*)viewController{
    return viewController.tabBarController?[self findLevelInNavigationController:viewController]:([viewController isKindOfClass:[UITabBarController class]]?[self findLevelInNavigationController:[(UITabBarController*)viewController selectedViewController]]:[self findLevelInNavigationController:viewController]);
}



-(UIViewController*)findNavigationControllerParent:(UIViewController*)controller{
    return controller.navigationController.tabBarController?[self findTabbarControllerParent:controller.navigationController.tabBarController]:(controller.navigationController.presentingViewController?controller.navigationController.presentingViewController:controller.presentingViewController);
}

-(UIViewController*)findTabbarControllerParent:(UIViewController*)controller{
    return controller.tabBarController.navigationController?[self findNavigationControllerParent:controller.tabBarController.navigationController]:(controller.tabBarController.presentingViewController?controller.tabBarController.presentingViewController:controller.presentingViewController);
}

@end
