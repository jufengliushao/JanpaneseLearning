//
//  FiftyTestPianBtnCollectionViewCell.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/30.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
static   NSString * FiftyTestPianBtnCollectionViewCellID = @"FiftyTestPianBtnCollectionViewCellID";
NS_ASSUME_NONNULL_BEGIN

@interface FiftyTestPianBtnCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *markLabel;

@property (weak, nonatomic) IBOutlet UILabel *targetLabel;
@property (weak, nonatomic) IBOutlet UIButton *firstBtn;
@property (weak, nonatomic) IBOutlet UIButton *secondBtn;
@property (weak, nonatomic) IBOutlet UIButton *thirdBtn;
@property (weak, nonatomic) IBOutlet UIButton *forthBtn;

- (void)configureModel:(NSDictionary *)data type:(QUESTIONTYPE)type;

@end

NS_ASSUME_NONNULL_END
