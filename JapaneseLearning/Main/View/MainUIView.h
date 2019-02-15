//
//  MainUIView.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
NS_ASSUME_NONNULL_BEGIN

@interface MainUIView : BaseView
@property (weak, nonatomic) IBOutlet UIButton *fiftyBtn;
@property (weak, nonatomic) IBOutlet UIButton *wordsBtn;


+ (MainUIView *)initForNib;
@end

NS_ASSUME_NONNULL_END
