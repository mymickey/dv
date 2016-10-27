//
// RecordDetailView.m
// MinyaDemo
//
// Created by author name on 2016/10/27
// Copyright 2016 company name. All right reserved.
//

#import "RecordDetailView.h"
#import "UIView+MIPipeline.h"
#import "RecordDetailPipeline.h"

@interface RecordDetailView ()

@property (nonatomic, strong) RecordDetailPipeline *pipeline;

@end

@implementation RecordDetailView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (void)setupPipeline:(__kindof MIPipeline *)pipeline {
    self.pipeline = pipeline;
}

@end
