//
//  FiftyTestInputCollectionViewCell.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/2/4.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyTestInputCollectionViewCell.h"

@interface FiftyTestInputCollectionViewCell(){
    FiftyModel *_rightData;
}
@end

@implementation FiftyTestInputCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.inputTF.text = @"";
    self.contentView.backgroundColor = [UIColor whiteColor];
}

- (void)configureModel:(NSDictionary *)data type:(QUESTIONTYPE)type{
    _rightData  = data[RIGHT_DATA_KEY];
    if (type == QUESTIONTYPE_ROMA_INPUT_SIGNAL) {
        // 单个roma
        int value = arc4random() % 2;
        self.targetLabel.text = value == 0  ? _rightData.ping : _rightData.pian;
        self.inputTF.text = @"";
    }else{
        // 多个roma
        self.targetLabel.text = _rightData.ping;
        self.inputTF.text = @"";
    }
}
@end
