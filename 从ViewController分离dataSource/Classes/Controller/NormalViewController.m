//
//  NormalViewController.m
//  从ViewController分离dataSource
//
//  Created by 黄丽萍 on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import "NormalViewController.h"
#import "NSArray+Data.h"
@interface NormalViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *dataSourceArrayLeft;
    NSArray *dataSourceArrayRight;
}
@property (weak, nonatomic) IBOutlet UITableView *tableViewLeft;
@property (weak, nonatomic) IBOutlet UITableView *tableViewRight;

@end
static NSString *identifierleft = @"leftCell";
static NSString *identifierRight = @"rightCell";
@implementation NormalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableViewLeft.delegate = self;
    self.tableViewLeft.dataSource = self;
    self.tableViewRight.delegate = self;
    self.tableViewRight.dataSource = self;
    
    dataSourceArrayLeft = [NSArray arrayWithData];
    dataSourceArrayRight = [NSArray arrayWithOtherData];
    
    [self.tableViewLeft registerClass:[UITableViewCell class] forCellReuseIdentifier:identifierleft];
//
    [self.tableViewRight registerClass:[UITableViewCell class] forCellReuseIdentifier:identifierRight];
}

#pragma mark - Table view data source

// Section numbers
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    
//    return  1;
//}

//  Row number in section
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (tableView == self.tableViewLeft) {
        return dataSourceArrayLeft.count;
    }
    return dataSourceArrayRight.count;
    
}

//  Each cell like
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (tableView == self.tableViewLeft) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierleft];
//        if (!cell) {
//            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifierRight];
//        }
        cell.textLabel.text = dataSourceArrayLeft[indexPath.row];
        return cell;
    }
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifierRight];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifierRight];
//    }
    cell.textLabel.text = dataSourceArrayRight[indexPath.row];
    return cell;
    
}

@end
