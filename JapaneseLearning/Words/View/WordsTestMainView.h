//
//  WordsTestMainView.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/2/16.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
NS_ASSUME_NONNULL_BEGIN

@interface WordsTestMainView : BaseView
@property (weak, nonatomic) IBOutlet UIButton *studyBtn;
@property (weak, nonatomic) IBOutlet UIButton *testBtn;

+ (WordsTestMainView *)initForNib;
@end

NS_ASSUME_NONNULL_END
