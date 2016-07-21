//
//  SeperateDataSourceViewController.m
//  从ViewController分离dataSource
//
//  Created by 黄丽萍 on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import "SeperateDataSourceViewController.h"
#import "ArrayDataSource.h"
#import "NSArray+Data.h"
#import "LeftCell.h"
#import "rightTCell.h"
@interface SeperateDataSourceViewController ()<UITableViewDataSource>
{
    NSArray *leftDataSourceArray;
    NSArray *rightDataSourceArray;
}
@property (weak, nonatomic) IBOutlet UITableView *leftTableView;
@property (weak, nonatomic) IBOutlet UITableView *rightTableView;

@property (nonatomic, strong) ArrayDataSource *rightDataSource;

@end

static NSString * const LeftCellIdentifier = @"LeftCell";
static NSString * const RightCellIdentifier = @"RightCell";

@implementation SeperateDataSourceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    leftDataSourceArray = [NSArray arrayWithModels];
    rightDataSourceArray = [NSArray arrayWithOtherModels];
    
    self.leftTableView.dataSource = self;
   // Right TableView
    TableViewCellConfigureBlock configureCell = ^(rightTCell *cell, DataModel *model) {
        cell.textLabel.text = model.name;
        cell.detailTextLabel.text = model.subName;
    };
   self.rightDataSource = [[ArrayDataSource alloc] initWithItems:rightDataSourceArray
                                                        cellIdentifier:RightCellIdentifier
                                                configureCellBlock:configureCell];
    self.rightTableView.dataSource  = self.rightDataSource;
   // 此处要要先注册 否则会崩溃
    [self.rightTableView registerClass:[rightTCell class] forCellReuseIdentifier:RightCellIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
//  Row number in section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return leftDataSourceArray.count;
    
}

//  Each cell like
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    LeftCell *cell = [tableView dequeueReusableCellWithIdentifier:LeftCellIdentifier];
    if (!cell) {
        cell = (LeftCell *)[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:LeftCellIdentifier];
    }
    cell.textLabel.text = [leftDataSourceArray[indexPath.row] name];
    cell.detailTextLabel.text = [leftDataSourceArray[indexPath.row] subName];
//    cell.model = leftDataSourceArray[indexPath.row];
    return cell;
    
}

@end
