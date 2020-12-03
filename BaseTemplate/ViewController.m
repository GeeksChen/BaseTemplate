//
//  ViewController.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/2.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import "CateViewController.h"
#import "DetailViewController.h"

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
    [jumpBtn setTitle:@"Template One" forState:(UIControlStateNormal)];
    [jumpBtn addTarget:self action:@selector(jumpAction) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:jumpBtn];
    
    UIButton *jumpBtn2 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    jumpBtn2.frame = CGRectMake(10, 160, self.view.frame.size.width-20, 50);
    [jumpBtn2 setBackgroundColor:[UIColor redColor]];
    [jumpBtn2 setTitle:@"Template Two" forState:(UIControlStateNormal)];
    [jumpBtn2 addTarget:self action:@selector(jump2Action) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:jumpBtn2];
    
    UIButton *jumpBtn3 = [UIButton buttonWithType:(UIButtonTypeCustom)];
    jumpBtn3.frame = CGRectMake(10, 220, self.view.frame.size.width-20, 50);
    [jumpBtn3 setBackgroundColor:[UIColor blueColor]];
    [jumpBtn3 setTitle:@"Template Three" forState:(UIControlStateNormal)];
    [jumpBtn3 addTarget:self action:@selector(jump3Action) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:jumpBtn3];
}

- (void)jumpAction {
    
    HomeViewController *homeVC = [HomeViewController new];
    [self.navigationController pushViewController:homeVC animated:YES];
}

- (void)jump2Action {
    
    CateViewController *cateVC = [CateViewController new];
    [self.navigationController pushViewController:cateVC animated:YES];
}

- (void)jump3Action {
    
    DetailViewController *detailVC = [DetailViewController new];
    [self.navigationController pushViewController:detailVC animated:YES];
}
@end
