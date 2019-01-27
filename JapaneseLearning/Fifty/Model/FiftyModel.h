//
//  FiftyModel.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface FiftyModel : JSONModel

@property (nonatomic, copy) NSString *pian;  // 片假名
@property (nonatomic, copy) NSString *ping; // 平假名
@property (nonatomic, copy) NSString *roma; // 罗马音

@end

NS_ASSUME_NONNULL_END
