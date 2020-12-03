//
//  BottomContentCell.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/3.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "BottomContentCell.h"

@implementation BottomContentCell

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    
    self.contentView.backgroundColor = RandColor;
}

@end
