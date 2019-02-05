//
//  FiftyTestMainView.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/31.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyTestMainView.h"

#import "FiftyTestPianBtnCollectionViewCell.h"
#import "FiftyTestInputCollectionViewCell.h"
@interface FiftyTestMainView()<UICollectionViewDelegate, UICollectionViewDataSource>{
    NSArray *_datas;
    NSArray *_types;
    NSInteger _currentItem;
}
@end

@implementation FiftyTestMainView
+ (FiftyTestMainView *)initForNib{
    return [self initForNib:@"FiftyTestMainView"];
}

- (void)awakeFromNib{
    [super awakeFromNib];
    self.mainCV.delegate = self;
    _currentItem = 0;
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
    [self.mainCV registerNib:
                                        [UINib nibWithNibName:@"FiftyTestInputCollectionViewCell"
                                                                    bundle:
                                                                    [NSBundle mainBundle]] forCellWithReuseIdentifier:FiftyTestInputCollectionViewCellID];
}

- (void)configureDatas:(NSArray *)datas types:(NSArray *)types{
    _datas = datas;
    _types = types;
    [self.mainCV reloadData];
}

- (void)buttonAction:(NSUInteger)tag{
    if (tag == RIGHT_ANSWER_TAG) {
        // right
        [self rightDelegate];
    }else{
        // wrong
        [self wrongDelegate];
    }
}

- (void)romaConfirmAction:(NSDictionary *)dic inputText:(NSString *)str{
    if ([[dic[RIGHT_DATA_KEY] roma] isEqualToString:str]) {
        // right
        [self rightDelegate];
    }else{
        [self wrongDelegate];
    }
}

- (void)rightDelegate{
    _currentItem ++;
    if (_currentItem >= _datas.count) {
        // complete
        if (self.delegate && [self.delegate respondsToSelector:@selector(testDelegate_testComplete)]) {
            [self.delegate testDelegate_testComplete];
        }
        return;
    }
    if (self.delegate && [self.delegate respondsToSelector:@selector(testDelegate_testRight)]) {
        [self.delegate testDelegate_testRight];
    }
    NSIndexPath *indexP = [NSIndexPath indexPathForRow:_currentItem inSection:0];
    [self.mainCV scrollToItemAtIndexPath:indexP atScrollPosition:(UICollectionViewScrollPositionRight) animated:true];
}

- (void)wrongDelegate{
    if (self.delegate && [self.delegate respondsToSelector:@selector(testDelegate_testWrong)]) {
        [self.delegate testDelegate_testWrong];
    }
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _datas.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    WS(ws);
    QUESTIONTYPE type = [_types[indexPath.item] integerValue];
    __block NSDictionary *dic = _datas[indexPath.item];
    if (type == QUESTIONTYPE_PIAN_RANDOM || type == QUESTIONTYPE_PING_RANDOM || type == QUESTIONTYPE_ROMA_RANDOM) {
        FiftyTestPianBtnCollectionViewCell *cell = [collectionView
                                                    dequeueReusableCellWithReuseIdentifier:FiftyTestPianBtnCollectionViewCellID
                                                    forIndexPath:indexPath];
        [cell configureModel:dic type:[_types[indexPath.item] integerValue]];
        [cell.firstBtn addTargetAction:^(UIButton *sender) {
            [ws buttonAction:sender.tag];
        }];
        [cell.secondBtn addTargetAction:^(UIButton *sender) {
            [ws buttonAction:sender.tag];
        }];
        [cell.thirdBtn addTargetAction:^(UIButton *sender) {
            [ws buttonAction:sender.tag];
        }];
        [cell.forthBtn addTargetAction:^(UIButton *sender) {
            [ws buttonAction:sender.tag];
        }];
        return cell;
    }
    FiftyTestInputCollectionViewCell *cell = [collectionView
                                                        dequeueReusableCellWithReuseIdentifier:FiftyTestInputCollectionViewCellID forIndexPath:indexPath];
    [cell configureModel:_datas[indexPath.item] type:[_types[indexPath.item] integerValue]];
    [cell.confirmBtn addTargetAction:^(UIButton *sender) {
        [ws romaConfirmAction:dic inputText:cell.inputTF.text];
    }];
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
