//
//  FiftyTestInputCollectionViewCell.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/2/4.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
static   NSString * FiftyTestInputCollectionViewCellID = @"FiftyTestInputCollectionViewCellID";
NS_ASSUME_NONNULL_BEGIN

@interface FiftyTestInputCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *targetLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputTF;
@property (weak, nonatomic) IBOutlet UILabel *markLabel;
@property (weak, nonatomic) IBOutlet UIButton *confirmBtn;



- (void)configureModel:(NSDictionary *)data type:(QUESTIONTYPE)type;


@end

NS_ASSUME_NONNULL_END
