//
//  BaseViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "BaseViewController.h"
#import "MBProgressHUD.h"
#import "TopView.h"
@interface BaseViewController (){
     MBProgressHUD *hud;
}
@property (nonatomic, strong) TopView *topView;
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    
   [self.view addSubview:self.topView];
    WS(ws);
    [self.topView.backBtn addTargetAction:^(UIButton *sender) {
        [ws top_backAction];
    }];
    // Do any additional setup after loading the view.
}

- (void)showText:(NSString *)text delay:(CGFloat)time{
    hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = NSLocalizedString(text, @"null");
    [hud hideAnimated:YES afterDelay:time];
}

#pragma mark - navbar actions
- (void)top_hiddeBack:(BOOL)isHidden{
    self.topView.backBtn.hidden = isHidden;
    self.topView.backIM.hidden = isHidden;
}

- (void)top_setTitle:(NSString *)title{
    self.topView.titleLabel.text = title;
}

- (void)top_resetFrame{
    self.topView.frame = CGRectMake(0, 0, SCREEN_WIDTH, NAV_BAR_HEIGHT);
}

- (void)top_backAction{
    
}

#pragma mark - 懒加载
- (TopView *)topView{
    if (!_topView) {
        _topView = [TopView initForNib];
        _topView.frame = CGRectMake(0, 0, SCREEN_WIDTH, NAV_BAR_HEIGHT);
    }
    return _topView;
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
