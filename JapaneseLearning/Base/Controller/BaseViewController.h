//
//  BaseViewController.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : ViewController
- (void)showText:(NSString *)text delay:(CGFloat)time;

- (void)top_hiddeBack:(BOOL)isHidden;
- (void)top_setTitle:(NSString *)title;
- (void)top_backAction;
- (void)top_resetFrame;
@end

NS_ASSUME_NONNULL_END
