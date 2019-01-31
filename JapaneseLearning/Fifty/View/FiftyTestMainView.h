//
//  FiftyTestMainView.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/31.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
NS_ASSUME_NONNULL_BEGIN

@interface FiftyTestMainView : BaseView
@property (weak, nonatomic) IBOutlet UICollectionView *mainCV;

+ (FiftyTestMainView *)initForNib;
- (void)configureDatas:(NSArray *)datas types:(NSArray *)types;
@end

NS_ASSUME_NONNULL_END
