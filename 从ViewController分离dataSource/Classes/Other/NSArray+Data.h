//
//  NSArray+Data.h
//  从ViewController分离dataSource
//
//  Created by 黄丽萍 on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Data)

+ (NSArray *)arrayWithData;

+ (NSArray *)arrayWithOtherData;

+ (NSMutableArray *)arrayWithModels;

+ (NSMutableArray *)arrayWithOtherModels;

@end
