//
// RecordDetailStore.m
// MinyaDemo
//
// Created by author name on 2016/10/27
// Copyright 2016 company name. All right reserved.
//

#import "RecordDetailStore.h"
#import "RecordDetailPipeline.h"
#import "Minya.h"

@interface RecordDetailStore ()

@property (nonatomic, strong) RecordDetailPipeline * recordDetailPipeline;

@end

@implementation RecordDetailStore

- (instancetype)initWithContext:(NSDictionary<NSString *,id> *)context {
    
    self = [super initWithContext:context];
    
    if (self) {
        
    }
    
    return self;
}

- (void)fetchData {
    
}

- (__kindof MIPipeline *)pipeline {
    return self.recordDetailPipeline;
}

- (void)addObservers {
    
}

+ (NSArray<NSString *> *)requiredParameters {
    return nil;
}

#pragma mark - Pipeline

- (RecordDetailPipeline *)recordDetailPipeline {
    if (!_recordDetailPipeline) {
        _recordDetailPipeline = [[RecordDetailPipeline alloc] init];
    }
    return _recordDetailPipeline;
}

@end
