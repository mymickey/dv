//
// RecordDetailViewController.m
// MinyaDemo
//
// Created by author name on 2016/10/27
// Copyright 2016 company name. All right reserved.
//

#import "RecordDetailViewController.h"
#import "RecordDetailPipeline.h"
#import "Minya.h"

@interface RecordDetailViewController ()

@property (nonatomic, strong) RecordDetailPipeline *pipeline;

@end

@implementation RecordDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"detail";
    // Add you own code 
}

- (void)setupPipeline:(__kindof MIPipeline *)pipeline {
    self.pipeline = pipeline;
}

@end
