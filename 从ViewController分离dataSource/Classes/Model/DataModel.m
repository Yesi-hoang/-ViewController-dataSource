//
//  DataModel.m
//  从ViewController分离dataSource
//
//  Created by Yesi on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
+ (instancetype)modelWithName:(NSString *)name subName:(NSString *)subname{
    DataModel *model = [DataModel new];
    model.name = name;
    model.subName = subname;
    return model;
}
@end
