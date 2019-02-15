//
//  WordsMainViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/2/16.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "WordsMainViewController.h"
#import "WordsTestMainView.h"
@interface WordsMainViewController ()
@property (nonatomic, strong) WordsTestMainView *mainView;
@end

@implementation WordsMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self viewIniting];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.autoresizesSubviews = NO;
    // Do any additional setup after loading the view from its nib.
}

- (void)viewIniting{
    [self top_hiddeBack:NO];
    [self top_setTitle:@"单词练习"];
    [self top_resetFrame];
    [self.view addSubview:self.mainView];
    [self buttonAction];
}

- (void)top_backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)buttonAction{

}

#pragma mark - 懒加载
- (WordsTestMainView *)mainView{
    if (!_mainView) {
        _mainView = [WordsTestMainView initForNib];
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
