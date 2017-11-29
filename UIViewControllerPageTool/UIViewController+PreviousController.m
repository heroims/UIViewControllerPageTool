//
//  UIViewController+PreviousController.m
//  xgoods
//
//  Created by admin on 2017/7/24.
//  Copyright © 2017年 Look. All rights reserved.
//

#import "UIViewController+PreviousController.h"
#import <objc/runtime.h>

@implementation UIViewController (PreviousController)

-(UIViewController *)pc_previousController{
    UIViewController *sourcePageController=objc_getAssociatedObject(self, @selector(pc_previousController));
    if (!sourcePageController) {
        if (self.navigationController&&self.navigationController.viewControllers.count>1) {
            NSInteger controllerCount=self.navigationController.viewControllers.count;
            sourcePageController=self.navigationController.viewControllers[controllerCount-2];
        }
        if (!sourcePageController) {
            if (self.presentingViewController) {
                sourcePageController=self.presentingViewController;
            }
        }
        
        
        while ([sourcePageController isKindOfClass:[UINavigationController class]]||[sourcePageController isKindOfClass:[UITabBarController class]]) {
            if ([sourcePageController isKindOfClass:[UINavigationController class]]) {
                sourcePageController=((UINavigationController*)sourcePageController).viewControllers.lastObject;
                if ([sourcePageController isKindOfClass:[UITabBarController class]]) {
                    sourcePageController=((UITabBarController*)sourcePageController).selectedViewController;
                }
            }
            if ([sourcePageController isKindOfClass:[UITabBarController class]]) {
                sourcePageController=((UITabBarController*)sourcePageController).selectedViewController;
                
                if ([sourcePageController isKindOfClass:[UINavigationController class]]) {
                    sourcePageController=((UINavigationController*)sourcePageController).viewControllers.lastObject;
                }
            }
        }
        
        if (sourcePageController) {
            objc_setAssociatedObject(self, @selector(pc_previousController), sourcePageController, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    }
    return sourcePageController;
}

@end
