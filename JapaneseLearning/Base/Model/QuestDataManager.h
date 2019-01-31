//
//  QuestDataManager.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/31.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EnumHeader.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestDataManager : NSObject
+ (instancetype)shareInstance;

/**
 * 获取问题数据
 */
- (NSDictionary *)questData_getDataWithType:(QUESTIONTYPE)type;
@end

NS_ASSUME_NONNULL_END
