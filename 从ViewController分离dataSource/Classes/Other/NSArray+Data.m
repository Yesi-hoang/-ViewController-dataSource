//
//  NSArray+Data.m
//  从ViewController分离dataSource
//
//  Created by 黄丽萍 on 16/7/20.
//  Copyright © 2016年 黄丽萍. All rights reserved.
//

#import "NSArray+Data.h"
#import "DataModel.h"
@implementation NSArray (Data)
+ (NSArray *)arrayWithData{
    NSArray *array = @[@"วันลอยกระทง水灯节🙊",@"โคมลอย孔明灯，天灯🎑",@"พลุ 烟火，烟花",@"เทียน蜡烛🌋",@"กะลามะพร้าว椰壳🎪",@"นางนพมาศ水灯节小姐🙆🏼",@"ก่อนจะลอยกระทง พวกเราจุดเทียนกันก่อน แล้วค่อยหลับตาอธิษฐาน放水灯之前，我们先点亮蜡烛然后闭上眼睛祈祷。🙏🏼",@"พวกเราไปลอยกระทงด้วยกันนะ我们一起去放水灯吧。"];
    return array;
}
+ (NSArray *)arrayWithOtherData{
    NSArray *array = @[@"长发公主",@"Rapunzel🎑",@"冰雪奇缘",@"เทียน蜡烛🌋",@"Frozen🎪",@"Kristoff🙆🏼",@"乐佩公主🙏🏼",@"弗林·莱德",@"克西姆斯"];
    return array;
}
+ (NSMutableArray *)arrayWithModels{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 10; i++) {
        DataModel *model = [DataModel modelWithName:[NSString stringWithFormat:@"left name %d",i] subName:[NSString stringWithFormat:@"left subname %d",i]];
        [array addObject:model];
    }
    return array;
}

+ (NSMutableArray *)arrayWithOtherModels{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < 15; i++) {
        DataModel *model = [DataModel modelWithName:[NSString stringWithFormat:@"right name %d",i] subName:[NSString stringWithFormat:@"right subname %d",i]];
        [array addObject:model];
    }
    return array;
    
}
@end
