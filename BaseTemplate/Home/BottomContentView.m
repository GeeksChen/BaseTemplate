//
//  BottomContentView.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/3.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "BottomContentView.h"
#import "BottomContentCell.h"

@interface BottomContentView ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *contentCollectionView;

@end

@implementation BottomContentView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    
    [self addSubview:self.contentCollectionView];
}

- (void)scrollToSection:(NSIndexPath *)indexPath {
    
    [self.contentCollectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionLeft animated:true];
}

- (UICollectionView *)contentCollectionView {
    if (!_contentCollectionView) {
        //创建布局对象
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        // 设置滚动的方向
        [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        //item的大小
        layout.itemSize = CGSizeMake(150, 150);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        _contentCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 150) collectionViewLayout:layout];
        _contentCollectionView.delegate = self;
        _contentCollectionView.dataSource = self;
        [_contentCollectionView registerClass:[BottomContentCell class] forCellWithReuseIdentifier:NSStringFromClass(BottomContentCell.class)];
        _contentCollectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return _contentCollectionView;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 5;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}
- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   
    BottomContentCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(BottomContentCell.class) forIndexPath:indexPath];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"==%lu",indexPath.row);
    if (self.block) {
        self.block(indexPath);
    }
}
@end
