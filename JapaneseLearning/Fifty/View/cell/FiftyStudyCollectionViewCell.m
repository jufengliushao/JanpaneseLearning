//
//  FiftyStudyCollectionViewCell.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyStudyCollectionViewCell.h"

@implementation FiftyStudyCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.contentView.backgroundColor = [UIColor whiteColor];
}

- (void)configureData:(FiftyModel *)model{
    self.romaLabel.text = model.roma;
    self.pianLabel.text = model.pian;
    self.pingLabel.text = model.ping;
}
@end
