//
//  FiftyTestMainView.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/31.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyTestMainView.h"
#import "FiftyTestPianBtnCollectionViewCell.h"
@interface FiftyTestMainView()<UICollectionViewDelegate, UICollectionViewDataSource>{
    NSArray *_datas;
    NSArray *_types;
}
@end

@implementation FiftyTestMainView
+ (FiftyTestMainView *)initForNib{
    return [self initForNib:@"FiftyTestMainView"];
}

- (void)awakeFromNib{
    [super awakeFromNib];
    self.mainCV.delegate = self;
    self.mainCV.dataSource = self;
    self.mainCV.backgroundColor = [UIColor whiteColor];
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    flow.itemSize = CGSizeMake(SCREEN_WIDTH, MAIN_VIEW_HEIGHT);
    flow.minimumLineSpacing = 0;
    flow.minimumInteritemSpacing = 0;
    flow.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.mainCV.pagingEnabled = true;
    self.mainCV.collectionViewLayout = flow;
    self.mainCV.bounces = false;
    self.mainCV.scrollEnabled = false;
    [self registerCell];
}

- (void)registerCell{
    [self.mainCV registerNib:
                                        [UINib nibWithNibName:@"FiftyTestPianBtnCollectionViewCell"
                                                                    bundle:
                                                                    [NSBundle mainBundle]] forCellWithReuseIdentifier:FiftyTestPianBtnCollectionViewCellID];
}

- (void)configureDatas:(NSArray *)datas types:(NSArray *)types{
    _datas = datas;
    _types = types;
    [self.mainCV reloadData];
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _datas.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    FiftyTestPianBtnCollectionViewCell *cell = [collectionView
                                    dequeueReusableCellWithReuseIdentifier:FiftyTestPianBtnCollectionViewCellID
                                          forIndexPath:indexPath];
    [cell configureModel:_datas[indexPath.item] type:[_types[indexPath.item] integerValue]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:true];
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{
    
}

- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{
    
}
@end
