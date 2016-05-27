//
//  ColorViewController.m
//  Delegate
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

- (IBAction)ColorClick:(UIButton *)sender {
    UIColor *color = sender.backgroundColor;
    if (self.delegate && [self.delegate respondsToSelector:@selector(modifyButtonColor:)]) {
        [self.delegate modifyButtonColor:color];
    }
}


@end
