//
//  FIftyMainViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FIftyMainViewController.h"
#import "FiftyMainView.h"
#import "FiftyStudyViewController.h"
#import "FiftyTestViewController.h"
@interface FIftyMainViewController ()
@property (nonatomic, strong) FiftyMainView *mainView;
@end

@implementation FIftyMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self viewIniting];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.autoresizesSubviews = NO;
    // Do any additional setup after loading the view from its nib.
}

- (void)viewIniting{
    [self top_hiddeBack:NO];
    [self top_setTitle:@"50音图"];
    [self top_resetFrame];
    [self.view addSubview:self.mainView];
    [self buttonAction];
}

- (void)top_backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)buttonAction{
    WS(ws);
    // 正常学习
    [self.mainView.showBtn addTargetAction:^(UIButton *sender) {
        [ws skip_study];
    }];
    // 测试
    [self.mainView.testBtn addTargetAction:^(UIButton *sender) {
        [ws skip_test];
    }];
}

#pragma mark - skip view
- (void)skip_study{
    FiftyStudyViewController *vc = [[FiftyStudyViewController alloc]
                                                                                               initWithNibName:@"FiftyStudyViewController"
                                                                                                                bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:true];
}

- (void)skip_test{
    FiftyTestViewController *vc = [[FiftyTestViewController alloc]
                                                                initWithNibName:@"FiftyTestViewController"
                                                                                bundle:[NSBundle mainBundle]];
    [self.navigationController pushViewController:vc animated:true];
}

#pragma mark - 懒加载
- (FiftyMainView *)mainView{
    if (!_mainView) {
        _mainView = [FiftyMainView initForNib];
        _mainView.frame = CGRectMake(0, NAV_BAR_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT - NAV_BAR_HEIGHT);
    }
    return _mainView;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
