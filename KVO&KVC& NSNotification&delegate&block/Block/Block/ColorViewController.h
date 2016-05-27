//
//  ColorViewController.h
//  Block
//
//  Created by mainone on 16/5/25.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^colorBlock)(UIColor *color);

@interface ColorViewController : UIViewController

@property (nonatomic, strong) colorBlock block;

@end
