//
//  rightTCell.h
//  从ViewController分离dataSource
//
//  Created by Yesi on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataModel.h"
@interface rightTCell : UITableViewCell
/** model */
@property (nonatomic, strong) DataModel *model;

@end
