//
//  FiftyStudyMainView.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
#import "FiftyStudyCollectionViewCell.h"
NS_ASSUME_NONNULL_BEGIN

@protocol StudyShowIndexDelegate <NSObject>

@required
- (void)delegate_currentShowModel:(FiftyModel *)data index:(NSInteger)index;

@end

@interface FiftyStudyMainView : BaseView
@property (weak, nonatomic) IBOutlet UICollectionView *mainCV;
@property (nonatomic, assign) id<StudyShowIndexDelegate> delegate;

+ (FiftyStudyMainView *)initForNib;
- (void)configureDatas:(NSArray *)datas;
@end

NS_ASSUME_NONNULL_END
