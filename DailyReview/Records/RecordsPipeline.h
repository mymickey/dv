//
// RecordsPipeline.h
// MinyaDemo
//
// Created by author name on 2016/10/27
// Copyright 2016 company name. All right reserved.
//

#import "MIPipeline.h"

@interface RecordsPipeline : MIPipeline
@property(nonatomic,assign) BOOL needDidPush;

@property(nonatomic,strong,readonly) NSDictionary *contextForRecord;
@end
