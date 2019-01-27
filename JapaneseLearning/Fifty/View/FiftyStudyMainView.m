//
//  FiftyStudyMainView.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyStudyMainView.h"
@interface FiftyStudyMainView()<UICollectionViewDelegate, UICollectionViewDataSource>{
    NSArray *_datas;
}
@end

@implementation FiftyStudyMainView
+ (FiftyStudyMainView *)initForNib{
    return [self initForNib:@"FiftyStudyMainView"];
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
    [self registerCell];
}

- (void)registerCell{
    [self.mainCV registerNib:
                        [UINib nibWithNibName:@"FiftyStudyCollectionViewCell"
                              bundle:
                         [NSBundle mainBundle]] forCellWithReuseIdentifier:FiftyStudyCollectionViewCellID];
}

- (void)configureDatas:(NSArray *)datas{
    _datas = datas;
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
    FiftyStudyCollectionViewCell *cell = [collectionView
                                                                dequeueReusableCellWithReuseIdentifier:FiftyStudyCollectionViewCellID
                                                                                                            forIndexPath:indexPath];
    [cell configureData:_datas[indexPath.item]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:true];
}
#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.delegate && [self.delegate respondsToSelector:@selector(delegate_currentShowModel:index:)]) {
        [self.delegate delegate_currentShowModel:_datas[indexPath.row] index:indexPath.row + 1];
    }
}

- (void)collectionView:(UICollectionView *)collectionView didEndDisplayingCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{
    
}
@end
