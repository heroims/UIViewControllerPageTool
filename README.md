# UIViewControllerPageTool![](http://cocoapod-badges.herokuapp.com/v/UIViewControllerPageTool/badge.png) ![](http://cocoapod-badges.herokuapp.com/p/UIViewControllerPageTool/badge.png)  [![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
Easy to get top viewcontroller ,previous viewcontroller and page level.(方便获取最上层页面，前一个页面以及页面层级)

![Screenshot1](http://heroims.github.io/UIViewControllerPageTool/Untitled.gif "Screenshot1") 
## Usage
```
@interface UIViewController (PageViewLevel)

@property(nonatomic,readonly)NSInteger pvl_pageViewLevel;

@end


@interface UIViewController (PreviousController)

/**
 不支持UITabbarController切换记录前一个
 扩展实现可通过 objc_setAssociatedObject(self, @selector(pc_previousController), sourcePageController, OBJC_ASSOCIATION_RETAIN_NONATOMIC) 设置
 优先使用以设置的值
 
 */
@property(nonatomic,readonly)UIViewController *pc_previousController;

@end


@interface UIViewController (TopViewController)

+ (UIViewController *)topViewController;

@end

```

## Installation

### via CocoaPods
Install CocoaPods if you do not have it:-
````
$ [sudo] gem install cocoapods
$ pod setup
````
Create Podfile:-
````
$ edit Podfile
platform :ios, '6.0'
pod 'UIViewControllerPageTool',  '~> 1.0.0'
$ pod install
````
Use the Xcode workspace instead of the project from now on.
