//
//  MainUIView.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "MainUIView.h"

@interface MainUIView()

@end

@implementation MainUIView
+ (MainUIView *)initForNib{
    return [self initForNib:@"MainUIView"];
}

- (void)awakeFromNib{
    [super awakeFromNib];
    self.fiftyBtn.layer.cornerRadius = 5;
    self.fiftyBtn.layer.masksToBounds = true;
    
    self.wordsBtn.layer.cornerRadius = 5;
    self.wordsBtn.layer.masksToBounds = true;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
