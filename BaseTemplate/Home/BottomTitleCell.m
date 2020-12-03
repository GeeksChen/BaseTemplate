//
//  BottomTitleCell.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/3.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "BottomTitleCell.h"

@interface BottomTitleCell ()


@end

@implementation BottomTitleCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
 
    self.contentView.backgroundColor = RandColor;
    
    [self.contentView addSubview:self.cateLabel];
}

/**
 添加约束/更新约束
 */
-(void)updateConstraints{
    
    [self.cateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
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

- (UILabel *)cateLabel {
    if (!_cateLabel) {
        _cateLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _cateLabel.textAlignment = NSTextAlignmentCenter;
        _cateLabel.font = [UIFont boldSystemFontOfSize:20];
        _cateLabel.backgroundColor = [UIColor whiteColor];
    }
    return _cateLabel;
}
@end
