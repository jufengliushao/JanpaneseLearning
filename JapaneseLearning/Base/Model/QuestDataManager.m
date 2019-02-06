//
//  QuestDataManager.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/31.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "QuestDataManager.h"

QuestDataManager *questDataM = nil;

@interface QuestDataManager(){
    NSArray *_fiftyAllDatas;
}
@end

@implementation QuestDataManager
+ (instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!questDataM){
            questDataM = [[QuestDataManager alloc] init];
        }
    });
    return questDataM;
}

- (instancetype)init{
    if (self = [super init]) {
        _fiftyAllDatas = [ReaderManager shareInstance].fiftiesArr;
    }
    return self;
}

#pragma mark - public methods
/**
 * 获取问题数据
 */
- (NSDictionary *)questData_getDataWithType:(QUESTIONTYPE)type{
    NSDictionary *result = @{};
    switch (type) {
        case QUESTIONTYPE_PIAN_RANDOM:{
            // 片假名数据
            result = [self private_getPianQuestData];
        }
            break;
            
        case QUESTIONTYPE_PING_RANDOM:{
            // 片假名数据
            result = [self private_getPianQuestData];
        }
            break;
            
        case QUESTIONTYPE_ROMA_RANDOM:{
            // roma数据
            result = [self private_getPianQuestData];
        }
            break;
            
        case QUESTIONTYPE_ROMA_INPUT_SIGNAL:{
            // 罗马音单个数据
            result = [self private_getRomaSignal];
        }
            break;
            
        case QUESTIONTYPE_ROMA_INPUT_MANY:{
            // 罗马音多个数据
            result = [self private_getRomaMany];
        }
            break;
            
        default:
            break;
    }
    return result;
}

#pragma mark - private methods
/**
 * 获取片假名数据
 */
- (NSDictionary *)private_getPianQuestData{
    NSMutableArray *arr = [NSMutableArray arrayWithArray:_fiftyAllDatas];
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:0];
    for (NSInteger i = 0; i < 4; i ++) {
        int value = arc4random() % arr.count;
        [result addObject:arr[value]];
        [arr removeObjectAtIndex:value];
    }
    int value = arc4random() % result.count;
    FiftyModel *right = result[value];
    NSDictionary *dic = @{
                          RIGHT_DATA_KEY : right,
                          QUESTION_DATA_KEY : result
                          };
    return dic;
}

/**
 * 获取单个roma
 */
- (NSDictionary *)private_getRomaSignal{
    NSMutableArray *arr = [NSMutableArray arrayWithArray:_fiftyAllDatas];
    int value = arc4random() % arr.count;
    FiftyModel *right = arr[value];
    NSDictionary *dic = @{
                          RIGHT_DATA_KEY : right,
                          QUESTION_DATA_KEY : @""
                          };
    return dic;
}

/**
 * 获取多个roma
 */
- (NSDictionary *)private_getRomaMany{
    int value = arc4random() % 5;
    value = value < 2 ? 2 : value;
    NSMutableArray *arr = [NSMutableArray arrayWithArray:_fiftyAllDatas];
    FiftyModel *target = [[FiftyModel alloc] init];
    target.ping = @"";
    target.roma = @"";
    for (int index = 0; index < value; index ++) {
         int ind = arc4random() % arr.count;
        FiftyModel *tmp = arr[ind];
        int p = arc4random() % 2;
        target.ping = [NSString stringWithFormat:@"%@%@", target.ping, p == 0  ? tmp.ping : tmp.pian];
        target.roma = [NSString stringWithFormat:@"%@%@", target.roma, tmp.roma];
        [arr removeObjectAtIndex:ind];
    }
    NSDictionary *dic = @{
                          RIGHT_DATA_KEY : target,
                          QUESTION_DATA_KEY : @""
                          };
    return dic;
}
@end
