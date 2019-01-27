//
//  ReaderManager.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FiftyModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface ReaderManager : NSObject
+ (instancetype)shareInstance;

@property (nonatomic, strong, readonly) NSArray *fiftiesArr; // 50 音图数据

@end

NS_ASSUME_NONNULL_END
