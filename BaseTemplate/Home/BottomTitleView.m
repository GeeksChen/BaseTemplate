//
//  BottomTitleView.m
//  BaseTemplate
//
//  Created by Geeks_Chen on 2020/12/3.
//  Copyright © 2020 zezf. All rights reserved.
//

#import "BottomTitleView.h"
#import "BottomTitleCell.h"

@interface BottomTitleView ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,strong)UICollectionView *titleCollectionView;

@end

@implementation BottomTitleView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    
    
    [self addSubview:self.titleCollectionView];
}

- (UICollectionView *)titleCollectionView {
    if (!_titleCollectionView) {
        //创建布局对象
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        // 设置滚动的方向
        [layout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        //item的大小
        layout.itemSize = CGSizeMake(100, 50);
        layout.minimumLineSpacing = 0;
        layout.minimumInteritemSpacing = 0;
        _titleCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 50) collectionViewLayout:layout];
        _titleCollectionView.delegate = self;
        _titleCollectionView.dataSource = self;
        [_titleCollectionView registerClass:[BottomTitleCell class] forCellWithReuseIdentifier:NSStringFromClass(BottomTitleCell.class)];
        _titleCollectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return _titleCollectionView;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 5;
}
- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
   
    BottomTitleCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(BottomTitleCell.class) forIndexPath:indexPath];
    cell.cateLabel.text = [NSString stringWithFormat:@"Cate%ld",indexPath.row];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"==%lu",indexPath.row);
    if (self.block) {
        self.block(indexPath.row);
    }
}
@end
