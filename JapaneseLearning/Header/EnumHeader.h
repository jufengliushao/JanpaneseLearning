//
//  EnumHeader.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/30.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#ifndef EnumHeader_h
#define EnumHeader_h
typedef NS_ENUM(NSInteger, QUESTIONTYPE) {
    QUESTIONTYPE_PIAN_RANDOM = 0, // 片假名随机按钮
    QUESTIONTYPE_PING_RANDOM, // 平假名随机按钮
    QUESTIONTYPE_ROMA_INPUT_SIGNAL, // roma-input-单个
};

#define ENUM_TOTAL_NUMBER 3
#endif /* EnumHeader_h */
