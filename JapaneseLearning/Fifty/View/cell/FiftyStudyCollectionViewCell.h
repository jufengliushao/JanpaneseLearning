//
//  FiftyStudyCollectionViewCell.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
//
NS_ASSUME_NONNULL_BEGIN
static   NSString * FiftyStudyCollectionViewCellID = @"FiftyStudyCollectionViewCellID";

@interface FiftyStudyCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *romaLabel;
@property (weak, nonatomic) IBOutlet UILabel *pianLabel;
@property (weak, nonatomic) IBOutlet UILabel *pingLabel;

- (void)configureData:(FiftyModel *)model;
@end

NS_ASSUME_NONNULL_END
