//
//  WordsMainViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/2/16.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "WordsMainViewController.h"

@interface WordsMainViewController ()

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
//    [self.view addSubview:self.mainView];
//    [self buttonAction];
}

- (void)top_backAction{
    [self.navigationController popViewControllerAnimated:YES];
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
