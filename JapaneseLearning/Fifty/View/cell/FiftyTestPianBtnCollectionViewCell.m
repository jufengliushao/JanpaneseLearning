//
//  FiftyTestPianBtnCollectionViewCell.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/30.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyTestPianBtnCollectionViewCell.h"

@interface FiftyTestPianBtnCollectionViewCell(){
    NSArray *_btnArr;
    FiftyModel *_rightData;
    NSArray *_questData;
}
@end

@implementation FiftyTestPianBtnCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.contentView.backgroundColor = [UIColor whiteColor];
    _btnArr = @[self.firstBtn, self.secondBtn, self.thirdBtn, self.forthBtn];
}

- (void)configureModel:(NSDictionary *)data type:(QUESTIONTYPE)type{
    _questData = data[QUESTION_DATA_KEY];
    _rightData = data[RIGHT_DATA_KEY];
    [self resetBtnTag];
    [self setRightTag];
   
    
}

- (void)resetBtnTag{
    for (UIButton *btn in _btnArr) {
        btn.tag = WRONG_ANSWER_TAG;
    }
}

- (void)setRightTag{
    NSUInteger idex = [_questData indexOfObject:_rightData];
    UIButton *btn = idex >= _btnArr.count ? _btnArr.firstObject : _btnArr[idex];
    btn.tag = RIGHT_ANSWER_TAG;
}

@end
