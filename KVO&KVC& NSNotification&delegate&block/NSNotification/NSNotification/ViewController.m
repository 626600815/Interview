//
//  ViewController.m
//  NSNotification
//
//  Created by mainone on 16/5/25.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *nextColorButton;

@end

@implementation ViewController

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"COLOR" object:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notice:) name:@"COLOR" object:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)notice:(NSNotification *)notification {
    NSDictionary *dict = [notification userInfo];
    UIColor *nextBackgroundColor = [dict objectForKey:@"color"];
    [self.nextColorButton setBackgroundColor:nextBackgroundColor];
    
}

@end
