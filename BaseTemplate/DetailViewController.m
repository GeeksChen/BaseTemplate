//
//  DetailViewController.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/3.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "DetailViewController.h"
#import "BottomTitleView.h"
#import "BottomContentView.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Template three";

    [self setupContentView];
    [self setupBottomView];
}

- (void)setupContentView {
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-220 - 100)];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
//    imgView.backgroundColor = [UIColor redColor];
    imgView.image = [UIImage imageNamed:@"book"];
    [self.view addSubview:imgView];
}

- (void)setupBottomView {
    
    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height-220, self.view.frame.size.width, 220)];
    bottomView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:bottomView];
    
    BottomContentView *bottomContentView = [[BottomContentView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 150)];
    bottomContentView.backgroundColor = [UIColor blueColor];
    [bottomView addSubview:bottomContentView];
    
    BottomTitleView *bottomTitleView = [[BottomTitleView alloc] initWithFrame:CGRectMake(0, 150, self.view.frame.size.width, 50)];
    bottomTitleView.backgroundColor = [UIColor yellowColor];
    [bottomView addSubview:bottomTitleView];
    
    bottomTitleView.block = ^(NSInteger idx) {
        [bottomContentView scrollToSection:[NSIndexPath indexPathForRow:0 inSection:idx]];
    };
    
    bottomContentView.block = ^(NSIndexPath * _Nonnull idxPath) {
        NSLog(@"section=%ld,row=%ld",idxPath.section,idxPath.row);
    };
}

@end
