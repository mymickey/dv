//
// RecordsView.m
// MinyaDemo
//
// Created by author name on 2016/10/27
// Copyright 2016 company name. All right reserved.
//

#import "RecordsView.h"
#import "UIView+MIPipeline.h"
#import "RecordsPipeline.h"

@interface RecordsView ()

@property (nonatomic, strong) RecordsPipeline *pipeline;
@property(nonatomic,strong) UIButton *pushBtn;
@property(nonatomic,strong) UIBarButtonItem *addBtn;
@end

@implementation RecordsView

-(UIButton *)pushBtn{
    if (!_pushBtn) {
        _pushBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBtn setBackgroundColor:[UIColor blueColor]];
        [_pushBtn setTitle:@"GO" forState:UIControlStateNormal];
        
        [_pushBtn addTarget:self action:@selector(pushBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _pushBtn;
}
-(void)pushBtnClick:sender{
    self.pipeline.needDidPush = YES;
}
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
