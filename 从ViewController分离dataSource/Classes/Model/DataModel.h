//
//  DataModel.h
//  从ViewController分离dataSource
//
//  Created by Yesi on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject
/** Name */
@property (nonatomic, strong) NSString *name;
/** SubName */
@property (nonatomic, strong) NSString *subName;

+ (instancetype)modelWithName:(NSString *)name subName:(NSString *)subname;
@end
