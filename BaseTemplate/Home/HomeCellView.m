
//
//  HomeCellView.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/2.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "HomeCellView.h"
#import "HomeItemCell.h"

@interface HomeCellView ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *homeCellView;

@end

@implementation HomeCellView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    
    [self addSubview:self.homeCellView];
}

- (UICollectionView *)homeCellView {
    if (!_homeCellView) {
        //创建布局对象
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        // 设置滚动的方向
        [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        //item的大小
        layout.itemSize = CGSizeMake(100, self.frame.size.height);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        _homeCellView = [[UICollectionView alloc] initWithFrame:self.frame collectionViewLayout:layout];
        _homeCellView.delegate = self;
        _homeCellView.dataSource = self;
        [_homeCellView registerClass:[HomeItemCell class] forCellWithReuseIdentifier:NSStringFromClass(HomeItemCell.class)];
        _homeCellView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return _homeCellView;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 15;
}
- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   
    HomeItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(HomeItemCell.class) forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"==%lu",indexPath.row);
}
@end
