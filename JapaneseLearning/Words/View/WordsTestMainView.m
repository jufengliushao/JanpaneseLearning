//
//  WordsTestMainView.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/2/16.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "WordsTestMainView.h"

@implementation WordsTestMainView
+ (WordsTestMainView *)initForNib{
    return [self initForNib:@"WordsTestMainView"];
}

- (void)awakeFromNib{
    self.backgroundColor = [UIColor whiteColor];
    [super awakeFromNib];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
