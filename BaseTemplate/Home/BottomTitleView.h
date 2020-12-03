//
//  BottomTitleView.h
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/3.
//  Copyright © 2020 zezf. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^selectedTitleItemBlock)(NSInteger idx);

@interface BottomTitleView : UIView

@property (nonatomic,copy)selectedTitleItemBlock block;

@end

NS_ASSUME_NONNULL_END
