//
//  HomeCell.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/2.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "HomeCell.h"
#import "HomeCellView.h"

@interface HomeCell ()

@property (nonatomic,strong)HomeCellView *homeCellView;

@end

@implementation HomeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    
    [self.contentView addSubview:self.homeCellView];
}

- (HomeCellView *)homeCellView {
    if (!_homeCellView) {
        _homeCellView = [[HomeCellView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    }
    return _homeCellView;
}

/**
 添加约束/更新约束
 */
-(void)updateConstraints{
    
    [self.homeCellView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.top.mas_equalTo(self);
    }];
       
    [super updateConstraints];
}
/**
 自动布局
 */
+(BOOL)requiresConstraintBasedLayout{
    return YES;
}
- (void)setFrame:(CGRect)frame
{
    [super setFrame:frame];
}
@end
