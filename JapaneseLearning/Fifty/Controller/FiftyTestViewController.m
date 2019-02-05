//
//  FiftyTestViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/30.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyTestViewController.h"
#import "FiftyTestMainView.h"
@interface FiftyTestViewController ()<TestProtocolDelegate>
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
    self.mainView.delegate = self;
    [self dataSetting];
}

- (void)top_backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)dataSetting{
    NSMutableArray *types = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < 100; i ++) {
        int value = arc4random() % ENUM_TOTAL_NUMBER;
        [types addObject:@(value)];
    }
    [types insertObject:@(QUESTIONTYPE_ROMA_RANDOM) atIndex:0];
    NSMutableArray *datas = [NSMutableArray arrayWithCapacity:0];
    for (NSInteger i = 0; i < types.count; i ++) {
        [datas addObject:[[QuestDataManager shareInstance] questData_getDataWithType:[types[i] integerValue]]];
    }
    [self.mainView configureDatas:datas types:types];
}

#pragma mark - TestProtocolDelegate
- (void)testDelegate_testComplete{
    [self showText:@"太棒了，题目全部做完了哟~" delay:1.0];
}

- (void)testDelegate_testRight{
    [self showText:@"回答正确~" delay:1.0];
}

- (void)testDelegate_testWrong{
    [self showText:@"答案错误~" delay:1.0];
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
