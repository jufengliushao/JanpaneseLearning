//
//  BaseView.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView
+ (instancetype)initForNib:(NSString *)name{
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:name owner:nil options:nil];
    return views.firstObject;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
