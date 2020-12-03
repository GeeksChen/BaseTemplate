//
//  HomeViewController.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/2.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeCell.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UITableView *homeTableView;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"HomeVC";
    
    [self.view addSubview:self.homeTableView];
}

- (UITableView *)homeTableView {
    if (!_homeTableView) {
        _homeTableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:(UITableViewStyleGrouped)];
        _homeTableView.backgroundColor = [UIColor whiteColor];
        _homeTableView.delegate = self;
        _homeTableView.dataSource = self;
        _homeTableView.rowHeight = 200;
    }
    return _homeTableView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HomeCellID"];
    if (!cell) {
        cell = [[HomeCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"HomeCellID"];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    UIView *sectionHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 50)];
    sectionHeaderView.backgroundColor = [UIColor lightGrayColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:sectionHeaderView.frame];
    label.text = [NSString stringWithFormat:@"section:%ld",section];
    label.font = [UIFont boldSystemFontOfSize:20];
    [sectionHeaderView addSubview:label];
    
    return sectionHeaderView;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}
@end
