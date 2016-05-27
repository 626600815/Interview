//
//  ColorViewController.m
//  NSNotification
//
//  Created by mainone on 16/5/25.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ColorViewController.h"

@interface ColorViewController ()

@end

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)colorClick:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter]postNotificationName:@"COLOR" object:nil userInfo:@{@"color":sender.backgroundColor}];
}



@end
