//
//  HomeItemCell.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/2.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "HomeItemCell.h"


@implementation HomeItemCell

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
