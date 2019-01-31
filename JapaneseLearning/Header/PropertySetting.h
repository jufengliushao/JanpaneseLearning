//
//  PropertySetting.h
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/23.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#ifndef PropertySetting_h
#define PropertySetting_h


#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define NAV_BAR_HEIGHT 64
#define MAIN_VIEW_HEIGHT SCREEN_HEIGHT - NAV_BAR_HEIGHT

#define RIGHT_ANSWER_TAG 14001 // 正确答案
#define WRONG_ANSWER_TAG 14002 // 错误答案

#define RIGHT_DATA_KEY @"right_data_key"
#define QUESTION_DATA_KEY @"question_data_key"
#endif /* PropertySetting_h */
