//
//  BottomContentView.h
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/3.
//  Copyright © 2020 zezf. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^selectedContentItemBlock)(NSIndexPath *idxPath);

@interface BottomContentView : UIView

@property (nonatomic,copy)selectedContentItemBlock block;

- (void)scrollToSection:(NSIndexPath *)indexPath;

@end

NS_ASSUME_NONNULL_END
