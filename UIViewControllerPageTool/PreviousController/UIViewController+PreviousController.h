//
//  UIViewController+PreviousController.h
//  xgoods
//
//  Created by admin on 2017/7/24.
//  Copyright © 2017年 Look. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PreviousController)

/**
 不支持UITabbarController切换记录前一个
 扩展实现可通过 objc_setAssociatedObject(self, @selector(pc_previousController), sourcePageController, OBJC_ASSOCIATION_RETAIN_NONATOMIC) 设置
 优先使用以设置的值
 */
@property(nonatomic,readonly)UIViewController *pc_previousController;

@end
