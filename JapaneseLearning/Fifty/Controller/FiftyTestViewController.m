//
//  FiftyTestViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/30.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyTestViewController.h"

@interface FiftyTestViewController ()

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
