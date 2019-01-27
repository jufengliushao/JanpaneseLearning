//
//  FiftyStudyViewController.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "FiftyStudyViewController.h"
#import "FiftyStudyMainView.h"
@interface FiftyStudyViewController ()<StudyShowIndexDelegate>{
    NSInteger _totalNumer;
}
@property (nonatomic, strong) FiftyStudyMainView *mainView;
@property (nonatomic, strong) UILabel *numberLabel;
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
    [self.view addSubview:self.mainView];
    self.mainView.delegate = self;
    [self.mainView configureDatas:[ReaderManager shareInstance].fiftiesArr];
    WS(ws);
    [self.numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.mas_equalTo(ws.view).mas_offset(-20);
        make.top.mas_equalTo(ws.view).mas_offset(NAV_BAR_HEIGHT + 10);
    }];
    _totalNumer = [ReaderManager shareInstance].fiftiesArr.count;
    self.numberLabel.text = [NSString stringWithFormat:@"1/%ld", _totalNumer];
}

- (void)top_backAction{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - StudyShowIndexDelegate
- (void)delegate_currentShowModel:(FiftyModel *)data index:(NSInteger)index{
    self.numberLabel.text = [NSString stringWithFormat:@"%ld/%ld", index, _totalNumer];
}

#pragma mark - 懒加载
- (FiftyStudyMainView *)mainView{
    if (!_mainView) {
        _mainView = [FiftyStudyMainView initForNib];
        _mainView.frame = CGRectMake(0, NAV_BAR_HEIGHT, SCREEN_WIDTH, MAIN_VIEW_HEIGHT);
    }
    return _mainView;
}

- (UILabel *)numberLabel{
    if (!_numberLabel) {
        _numberLabel = [[UILabel alloc] init];
        _numberLabel.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:_numberLabel];
    }
    return _numberLabel;
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
