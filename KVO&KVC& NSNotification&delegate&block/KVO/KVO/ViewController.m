//
//  ViewController.m
//  KVO
//
//  Created by mainone on 16/5/25.
//  Copyright © 2016年 wjn. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"

@interface ViewController ()

@property (nonatomic, strong) DataModel *stockForKVO;
@property (nonatomic, strong) UILabel *priceLabel;

@end

@implementation ViewController

- (void)dealloc {
    [self.stockForKVO removeObserver:self forKeyPath:@"price"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.stockForKVO = [[DataModel alloc] init];
    [self.stockForKVO setValue:@"searph" forKey:@"stockName"];
    [self.stockForKVO setValue:@"10.0" forKey:@"price"];
    [self.stockForKVO addObserver:self forKeyPath:@"price" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:NULL];
    
    
    self.priceLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    self.priceLabel.backgroundColor = [UIColor orangeColor];
    self.priceLabel.text = [self.stockForKVO valueForKey:@"price"];
    self.priceLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.priceLabel];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 250, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(btnCLick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)btnCLick:(UIButton *)button {
    NSString *priceStr = [NSString stringWithFormat:@"%u",arc4random()%50];
    [self.stockForKVO setValue:priceStr forKey:@"price"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"price"]) {
        self.priceLabel.text = [self.stockForKVO valueForKey:@"price"];
    }else {
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}








@end
