//
//  LeftCell.m
//  从ViewController分离dataSource
//
//  Created by Yesi on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import "LeftCell.h"

@implementation LeftCell
- (void)setModel:(DataModel *)model{
    _model = model;
    self.textLabel.text = model.name;
    self.detailTextLabel.text = model.subName;
}
@end
