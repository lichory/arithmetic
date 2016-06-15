//
//  Sort.h
//  排序算法
//
//  Created by lichory on 16/6/14.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Sort : NSObject


@property (nonatomic,strong) NSMutableArray * sortArr;


/*交换方法**/
- (void)exchargeIndex:(int)i otherIndex:(int)j;

/* 开始排序 **/
- (void)startSort;

/* 打印排序 **/
- (NSString *)printSort;

@end
