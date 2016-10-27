//
// RecordsViewController.m
// MinyaDemo
//
// Created by author name on 2016/10/27
// Copyright 2016 company name. All right reserved.
//

#import "RecordsViewController.h"
#import "RecordsPipeline.h"
#import "Minya.h"

@interface RecordsViewController ()

@property (nonatomic, strong) RecordsPipeline *pipeline;

@end

@implementation RecordsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"records";
    // Add you own code 
}

- (void)setupPipeline:(__kindof MIPipeline *)pipeline {
    self.pipeline = pipeline;
}
-(void)addObservers{
    @weakify(self)
    [MIObserve(self.pipeline, needDidPush) changed:^(id  _Nonnull newValue) {
        @strongify(self)
        MIScene *scene = [MIScene
                          sceneWithView:@"RecordDetailView"
                          controller:@"RecordDetailViewController"
                          store:@"RecordDetailStore"];
        UIViewController *ctrl = [[MIMediator sharedMediator] viewControllerWithScene:scene context:self.pipeline.contextForRecord];
        [self.navigationController pushViewController:ctrl animated:YES];
        
    }];
}
@end
