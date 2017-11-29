//
//  FirstViewController.m
//  Demo
//
//  Created by admin on 2017/11/29.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "FirstViewController.h"
#import "PushViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"First";
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(id)sender {
    PushViewController *vc=[[PushViewController alloc] init];
    [self.tabBarController.navigationController pushViewController:vc animated:YES];
}

@end
