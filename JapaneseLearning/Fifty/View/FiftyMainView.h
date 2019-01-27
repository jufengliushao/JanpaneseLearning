//
//  FiftyMainView.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/24.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
NS_ASSUME_NONNULL_BEGIN

@interface FiftyMainView : BaseView
@property (weak, nonatomic) IBOutlet UIButton *showBtn;
@property (weak, nonatomic) IBOutlet UIButton *testBtn;
+ (FiftyMainView *)initForNib;
@end

NS_ASSUME_NONNULL_END
