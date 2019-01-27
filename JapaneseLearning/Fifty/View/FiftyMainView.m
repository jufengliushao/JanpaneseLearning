//
//  FiftyMainView.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/24.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyMainView.h"

@implementation FiftyMainView
+ (FiftyMainView *)initForNib{
    return [self initForNib:@"FiftyMainView"];
}

-(void)awakeFromNib{
    [super awakeFromNib];
    self.showBtn.layer.cornerRadius = 5;
    self.showBtn.layer.masksToBounds = true;
    
    self.testBtn.layer.cornerRadius = 5;
    self.testBtn.layer.masksToBounds = true;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
