//
//  ViewController.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/2.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.title = @"BaseTemplate";
    
    UIButton *jumpBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    jumpBtn.frame = CGRectMake(10, 100, self.view.frame.size.width-20, 50);
    [jumpBtn setBackgroundColor:[UIColor blueColor]];
    [jumpBtn setTitle:@"JUMP" forState:(UIControlStateNormal)];
    [jumpBtn addTarget:self action:@selector(jumpAction) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:jumpBtn];
}

- (void)jumpAction {
    
    HomeViewController *homeVC = [HomeViewController new];
    [self.navigationController pushViewController:homeVC animated:YES];
}
@end
