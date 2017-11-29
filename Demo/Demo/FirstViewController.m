//
//  FirstViewController.m
//  Demo
//
//  Created by admin on 2017/11/29.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "FirstViewController.h"
#import "PushViewController.h"

@interface FirstViewController (){
    BOOL _isPush;
}


@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"First";
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    _isPush=NO;
    self.tabBarController.navigationController.navigationBar.hidden=NO;
}

-(void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    if (!_isPush) {
        self.tabBarController.navigationController.navigationBar.hidden=YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(id)sender {
    _isPush=YES;
    PushViewController *vc=[[PushViewController alloc] init];
    [self.tabBarController.navigationController pushViewController:vc animated:YES];
}

@end
