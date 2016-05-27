//
//  ColorViewController.h
//  Delegate
//
//  Created by mainone on 16/5/25.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorViewControllerDelegate <NSObject>

@optional
- (void)modifyButtonColor:(UIColor *)color;

@end

@interface ColorViewController : UIViewController

@property (nonatomic, assign) id<ColorViewControllerDelegate>delegate;

@end
