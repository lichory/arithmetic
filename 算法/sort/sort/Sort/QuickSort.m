//
//  QuickSort.m
//  排序算法
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import "QuickSort.h"

@implementation QuickSort

- (void)startSort {
    
    [self sortWithStartIndex:0 endIndex:(int)self.sortArr.count -1];
}

/*
 * 快速排序的思想 其实和归并有点相同，也是分治的思想
 **/
- (void)sortWithStartIndex:(int)startIndex endIndex:(int)endIndex {
    
    if (startIndex >= endIndex) {
        return;
    }
    
    int partion = [self partionForQuickSortWithStartIndex:startIndex endIndex:endIndex];
    [self sortWithStartIndex:startIndex endIndex:partion]; //左边有序
    [self sortWithStartIndex:partion+1 endIndex:endIndex];// 右边有序
    
}


/*
 * 补坑的方法
 **/
- (int)partionForQuickSortWithStartIndex:(int)startIndex endIndex:(int)endIndex {
    
    int i = startIndex;
    int j = endIndex;
    // 1. 先占一个坑，i指针当前的这个坑
    NSNumber * value = self.sortArr[startIndex];
    
    while (i < j) {
        
        /* 循从右边到 左边循环 如果存在比value 小的值保留同时break**/
        while (i < j) {
            
            if ([self.sortArr[j] floatValue] < [value floatValue]) {
                //找到了 右边存在一个比 value 要小的值 那么直接 把这个值放到value 的位置中
                //那么现在 j指向的位置是可以用来赋值的
                
                // 2. 现在把值 填入 到前面的那个坑中，现在j 指向这个坑
                self.sortArr[i] = self.sortArr[j];
                i++; //通知开始 i指针工作
                break;
            }else {
             
                j--;
            }
            
        }
        
        /* 循从左到 右边循环 ，如果存在比value 大的值保留同时break **/
        while (i < j) {
            
            if ([self.sortArr[i] floatValue] > [value floatValue]) {
                
                // 3. 现在把值 填入 到前面的那个坑中，现在i 指向这个坑
                self.sortArr[j] = self.sortArr[i];
                j--;//通知开始 j指针工作
                break;
            }else {
                i++;
            }
        }
    }
    
    /*4. 最终肯定 i 和 j 同时 指向当前的这个 坑，然后 直接把value 值给它**/
    self.sortArr[j] = value;
    return j;
   
}

@end
