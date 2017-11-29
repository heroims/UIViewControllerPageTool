//
//  UIViewController+PageViewLevel.h
//  xgoods
//
//  Created by admin on 2017/5/18.
//  Copyright © 2017年 Look. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PageViewLevel)

/**
 从 0 开始,记录真实的页面层级不受UITabBarController,UINavigationController包含关系影响
*/
@property(nonatomic,readonly)NSInteger pvl_pageViewLevel;

@end
