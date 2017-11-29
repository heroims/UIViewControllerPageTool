//
//  PushViewController.m
//  Demo
//
//  Created by admin on 2017/11/29.
//  Copyright © 2017年 admin. All rights reserved.
//

#import "PushViewController.h"

@interface PushViewController ()

@end

@implementation PushViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    btn.layer.masksToBounds=YES;
    btn.layer.borderWidth=1;
    btn.layer.borderColor=[UIColor blackColor].CGColor;
    btn.layer.cornerRadius=10;
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    btn.center=self.view.center;
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.view.backgroundColor=[UIColor whiteColor];

    self.title=[NSString stringWithFormat:@"页面在第%zi层",self.pvl_pageViewLevel+1];
    
    UILabel *lbl=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, btn.frame.origin.y)];
    lbl.textColor=[UIColor blackColor];
    lbl.textAlignment=NSTextAlignmentCenter;
    lbl.numberOfLines=0;
    lbl.lineBreakMode=NSLineBreakByWordWrapping;
    [self.view addSubview:lbl];
    lbl.text=[NSString stringWithFormat:@"前一个页面Title：%@\n最上层页面Title:%@",self.pc_previousController.title,[UIViewController topViewController].title];

    
    // Do any additional setup after loading the view.
}

-(void)btnClick{
    PushViewController *vc=[[PushViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
