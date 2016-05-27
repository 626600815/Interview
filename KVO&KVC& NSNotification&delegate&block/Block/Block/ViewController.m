//
//  ViewController.m
//  Block
//
//  Created by mainone on 16/5/25.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ViewController.h"
#import "ColorViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    id destVc = segue.destinationViewController;
    if ([destVc isKindOfClass:[ColorViewController class]]) {
        ColorViewController *colorVc = destVc;
        colorVc.block = ^(UIColor *color) {
            [self.nextButton setBackgroundColor:color];
        };
    }
}

@end
