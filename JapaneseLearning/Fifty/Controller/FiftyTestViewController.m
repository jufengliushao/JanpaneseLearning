//
//  FiftyTestViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/30.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyTestViewController.h"
#import "FiftyTestMainView.h"
@interface FiftyTestViewController ()
@property (nonatomic, strong) FiftyTestMainView *mainView;
@end

@implementation FiftyTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.autoresizesSubviews = NO;
    [self viewSetting];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewSetting{
    [self top_hiddeBack:NO];
    [self top_setTitle:@"50音图自测"];
    [self.view addSubview:self.mainView];
    [self dataSetting];
}

- (void)top_backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dataSetting{
    NSArray *types = @[@(QUESTIONTYPE_PIAN_RANDOM), @(QUESTIONTYPE_PIAN_RANDOM), @(QUESTIONTYPE_PIAN_RANDOM), @(QUESTIONTYPE_PIAN_RANDOM), @(QUESTIONTYPE_PIAN_RANDOM), @(QUESTIONTYPE_PIAN_RANDOM), @(QUESTIONTYPE_PIAN_RANDOM), @(QUESTIONTYPE_PIAN_RANDOM)];
    NSMutableArray *datas = [NSMutableArray arrayWithCapacity:0];
    for (NSInteger i = 0; i < types.count; i ++) {
        [datas addObject:[[QuestDataManager shareInstance] questData_getDataWithType:[types[i] integerValue]]];
    }
    [self.mainView configureDatas:datas types:types];
}

#pragma mark - 懒加载
- (FiftyTestMainView *)mainView{
    if (!_mainView) {
        _mainView = [FiftyTestMainView initForNib];
        _mainView.frame = CGRectMake(0, NAV_BAR_HEIGHT, SCREEN_WIDTH, MAIN_VIEW_HEIGHT);
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
