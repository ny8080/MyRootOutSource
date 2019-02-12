//
//  HSViewController.m
//  MyRootOutSource
//
//  Created by ny8080 on 01/24/2019.
//  Copyright (c) 2019 ny8080. All rights reserved.
//

#import "HSViewController.h"
#import "DHTTableViewManager.h"
#import "DHTTableViewSection.h"
#import "Masonry.h"
#import "HSTestItem.h"
#import "ADHostTest.h"

@interface HSViewController ()

@property(nonatomic, strong) UITableView *theTableView;
@property(nonatomic, strong) DHTTableViewManager *manager;
//@property(nonatomic, strong) UITableView *section;

@end

@implementation HSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    ADHostTest *test = [ADHostTest new];
    [test test1];
    
    self.theTableView = [[UITableView alloc] init];
    [self.view addSubview:self.theTableView];
    
    [self.theTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(@(0));
    }];
    
    
    self.manager = [[DHTTableViewManager alloc] initWithTableView:self.theTableView];
    [self.manager registerCell:@"HSTestCell" withItem:NSStringFromClass([HSTestItem class])];
    DHTTableViewSection *section = [DHTTableViewSection sectionWithClearHeader:0];
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [NSThread sleepForTimeInterval:2.0f];
        
        for (int i =0; i<10; i++) {
            HSTestItem *item = [HSTestItem item];
            item.name = @"哈哈哈是";
            [section addItem:item];
        }
        
        [self.manager addSection:section];
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.manager reloadData];
        });
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
