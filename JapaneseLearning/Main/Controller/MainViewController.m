//
//  MainViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "MainViewController.h"

#import "MainUIView.h"

#import "FIftyMainViewController.h"
@interface MainViewController()
@property (nonatomic, strong) MainUIView *mainView;
@end

@implementation MainViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    [self viewIniting];
}

- (void)viewIniting{
    [self top_hiddeBack:YES];
    [self top_setTitle:@"首页"];
    [self.view addSubview:self.mainView];
    [self buttonAction];
}

- (void)buttonAction{
    WS(ws);
    [self.mainView.fiftyBtn addTargetAction:^(UIButton *sender) {
        // 50音图
        [ws skip_fiftyVC];
    }];
}

#pragma mark - view skip
- (void)skip_fiftyVC{
    FIftyMainViewController *vc = [[FIftyMainViewController alloc]
                                                                        initWithNibName:@"FIftyMainViewController"
                                                                                         bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - 懒加载
- (MainUIView *)mainView{
    if (!_mainView) {
        _mainView = [MainUIView initForNib];
        _mainView.frame = CGRectMake(0, NAV_BAR_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT - NAV_BAR_HEIGHT);
    }
    return _mainView;
}
@end
