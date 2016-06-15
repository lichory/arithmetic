//
//  Sort.m
//  排序算法
//
//  Created by lichory on 16/6/14.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import "Sort.h"

@implementation Sort

- (void)startSort {
    
    
}

/*交换方法**/
- (void)exchargeIndex:(int)i otherIndex:(int)j {
    
    if ( i == j) {
        return;
    }
    
    [self.sortArr exchangeObjectAtIndex:i withObjectAtIndex:j];
}

/* 开始排序 **/
- (NSString *)printSort {
    
    NSString * s = @"";
    for (id obj in self.sortArr) {
        
        s = [NSString stringWithFormat:@"%@ %@",s,obj];
    }
    NSLog(@"%@ : %@",[self class],s);
    return s;
}


@end
