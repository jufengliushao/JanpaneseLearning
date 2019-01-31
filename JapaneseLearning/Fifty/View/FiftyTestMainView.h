//
//  FiftyTestMainView.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/31.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"
NS_ASSUME_NONNULL_BEGIN

@protocol TestProtocolDelegate <NSObject>
@required
- (void)testDelegate_testComplete;
- (void)testDelegate_testWrong;
- (void)testDelegate_testRight;

@end

@interface FiftyTestMainView : BaseView
@property (weak, nonatomic) IBOutlet UICollectionView *mainCV;
@property (nonatomic, assign) id<TestProtocolDelegate> delegate;


+ (FiftyTestMainView *)initForNib;
- (void)configureDatas:(NSArray *)datas types:(NSArray *)types;
@end

NS_ASSUME_NONNULL_END
