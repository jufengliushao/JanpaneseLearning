//
//  ReaderManager.m
//  JapaneseLearning
//
//  Created by shaofeng liu on 2019/1/27.
//  Copyright © 2019年 shaofeng liu. All rights reserved.
//

#import "ReaderManager.h"

ReaderManager *readrM = nil;

@interface ReaderManager(){
    NSMutableArray *_fiftyArr;
}

@end

@implementation ReaderManager
+ (instancetype)shareInstance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (!readrM){
            readrM = [[ReaderManager alloc] init];
        }
    });
    return readrM;
}

- (instancetype)init{
    if (self = [super init]) {
        _fiftyArr = [NSMutableArray arrayWithCapacity:0];
    }
    return self;
}

#pragma mark - public method
- (NSArray *)fiftiesArr{
    if (_fiftyArr.count == 0) {
        [self private_readFifty];
    }
    return _fiftyArr;
}

#pragma mark - private method
- (void)private_readFifty{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Language" ofType:@"plist"];
    NSArray *datas = [[NSArray alloc] initWithContentsOfFile:filePath];
    [self private_configureData:datas];
}

- (void)private_configureData:(NSArray *)datas{
    _fiftyArr = [FiftyModel arrayOfModelsFromDictionaries:datas error:nil];
}
@end
