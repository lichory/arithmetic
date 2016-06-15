//
//  BubbleSort.m
//  排序算法
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort

- (void)startSort {
    
    [self bubbleSortWithStartIndex:0 endIndex:(int)self.sortArr.count-1];
}

- (void)bubbleSortWithStartIndex:(int)startIndex endIndex:(int)endIndex {
    
    if (startIndex >= endIndex) {
        return;
    }
    
    for (int i = startIndex; i < endIndex; i++) {
        
        /* 把大的数往后 冒泡**/
        if ([self.sortArr[i] floatValue] > [self.sortArr[i+1] floatValue] ) {
            [self exchargeIndex:i otherIndex:i+1];
        }
    }
    
    [self bubbleSortWithStartIndex:startIndex endIndex:endIndex -1];
}



@end
