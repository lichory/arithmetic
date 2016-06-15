//
//  MergeSort.m
//  排序算法
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import "MergeSort.h"

@implementation MergeSort


- (void)startSort {
    
    [self sortWithStartIndex:0 endIndex:(int)self.sortArr.count -1];
}

/*
 * 合并算法的思想就是 自顶向下的思想
 * 也是一个分治的思想，只要 最底层有解 那么它的最上层也是有接的
 * 它其实就是 只要子问题中的 肯定存在 两个有序的：比如两个值 a 和b 那么必定 可以保证 a b是递增或者递减的，所以子问题保证了 就可以 往上回溯，是的 整个 数组是 有序的
 **/

- (void)sortWithStartIndex:(int)startIndex endIndex:(int)endIndex {
    
    if (startIndex >= endIndex) {
        
        return;
    }
    
    int mid = (startIndex+endIndex)/2;
    [self sortWithStartIndex:startIndex endIndex:mid];//左边有序
    [self sortWithStartIndex:mid+1 endIndex:endIndex];//右边有序
    //归并
    [self mergeSortWithStartIndex:startIndex midIndex:mid endIndex:endIndex];
    
}

/* 将两个有序的 归并成一个数组**/
- (void)mergeSortWithStartIndex:(int)startIndex midIndex:(int)midIndex endIndex:(int)endIndex {
    
    /*
     * startIndex -> midIndex(包括midIndex) 
     * midIndex+1 -> endIndex(包括endIndex)
     **/
    
    int i = startIndex;
    int j = midIndex+1;
    
    NSMutableArray * temp = [NSMutableArray array];
    
    while (i <= midIndex && j <= endIndex) {
        
        if ([self.sortArr[i] floatValue] > [self.sortArr[j] floatValue]) {
            
            [temp addObject:self.sortArr[j++]];
            
        }else {
            [temp addObject:self.sortArr[i++]];
            
        }
    }
    
    while (i <= midIndex) {
        [temp addObject:self.sortArr[i++]];
        
    }
    while (j <= endIndex) {
        [temp addObject:self.sortArr[j++]];
        
    }
    
    
    for (i = startIndex,j = 0; i <= endIndex ; i++,j++) {
        self.sortArr[i] = temp[j];
    }
    
    
    
}

@end
