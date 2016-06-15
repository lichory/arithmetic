//
//  SelectedSort.m
//  排序算法
//
//  Created by lichory on 16/6/14.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import "SelectedSort.h"

@implementation SelectedSort

- (void)startSort {
    
    [self selectedSortWithStartIndex:0 endIndex:(int)self.sortArr.count-1];
}

- (void)selectedSortWithStartIndex:(int)startIndex endIndex:(int)endIndex {
    
    /* 递归出口 **/
    if (startIndex >= endIndex) {
        return;
    }
    
    /* 下面就是 找到 最小值的下标 **/
    int minIndex = startIndex;
    for (int i = startIndex +1; i <= endIndex; i++) {
        
        if ([self.sortArr[i] floatValue] < [self.sortArr[minIndex] floatValue]) {
            
            minIndex = i;
        }
    }
    /*如果找到了 就交互数据 **/
    if (minIndex != startIndex) {
        [self exchargeIndex:startIndex otherIndex:minIndex];
    }
    
    /* 接下来 就是 递归 从startIndex+1 开始的下标 然后找最小值**/
    [self selectedSortWithStartIndex:startIndex+1 endIndex:endIndex];
    
}




@end
