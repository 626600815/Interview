//
//  ViewController.m
//  Delegate
//
//  Created by mainone on 16/5/25.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ViewController.h"
#import "ColorViewController.h"

@interface ViewController () <ColorViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *nextColor;

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
        colorVc.delegate = self;
    }
}

- (void)modifyButtonColor:(UIColor *)color {
    [self.nextColor setBackgroundColor:color];
}

@end
