//
// RecordsStore.m
// MinyaDemo
//
// Created by author name on 2016/10/27
// Copyright 2016 company name. All right reserved.
//

#import "RecordsStore.h"
#import "RecordsPipeline.h"
#import "Minya.h"

@interface RecordsStore ()

@property (nonatomic, strong) RecordsPipeline * recordsPipeline;

@end

@implementation RecordsStore

- (instancetype)initWithContext:(NSDictionary<NSString *,id> *)context {
    
    self = [super initWithContext:context];
    
    if (self) {
        
    }
    
    return self;
}

- (void)fetchData {
    
}

- (__kindof MIPipeline *)pipeline {
    return self.recordsPipeline;
}

- (void)addObservers {
    
}

+ (NSArray<NSString *> *)requiredParameters {
    return nil;
}

#pragma mark - Pipeline

- (RecordsPipeline *)recordsPipeline {
    if (!_recordsPipeline) {
        _recordsPipeline = [[RecordsPipeline alloc] init];
    }
    return _recordsPipeline;
}

@end
