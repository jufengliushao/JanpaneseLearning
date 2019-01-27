//
//  FiftyStudyViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyStudyViewController.h"

@interface FiftyStudyViewController ()

@end

@implementation FiftyStudyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self viewIniting];
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.autoresizesSubviews = NO;
    // Do any additional setup after loading the view from its nib.
}

- (void)viewIniting{
    [self top_hiddeBack:NO];
    [self top_setTitle:@"50音图学习"];
    [self top_resetFrame];
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
