//
//  UIButton+SFButton.h
//  BaseFunction
//
//  Created by cnlive-lsf on 2016/12/26.
//  Copyright © 2016年 cnlive-lsf. All rights reserved.
//

#import <UIKit/UIKit.h>
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;
#define BS(blockSelf)  __block __typeof(&*self)blockSelf = self;

typedef void(^ActionBlock)(UIButton *sender);

@interface UIButton (SFButton)
- (void)addTargetAction:(ActionBlock)action;

@end
