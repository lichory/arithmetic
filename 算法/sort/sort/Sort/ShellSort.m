//
//  ShellSort.m
//  排序算法
//
//  Created by apple on 16/6/15.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import "ShellSort.h"
#import "BubbleSort.h"

@implementation ShellSort

/* 开始排序
 * shell 排序的思想是
 * 就是 以h间隔 有序 =》 相当于 一列数组中 从 a ——》a+h - 》 a+2h -> a+3h ....有序的
 * 就是为当 h = 1 时候，交换的次数相对来说要减少
 **/
- (void)startSort {
    
    int h = 1;
    //分成3段
    while (h < self.sortArr.count/3) {
        h = 3*h +1;
    }
    
    
    while (h >= 1) {
        
        /*
         * 让 从 i ->i+h ->i+2h ->i+3h 是有顺序的
         **/
        for (int i = 0; i < self.sortArr.count; i+=h) {
            
            for (int j = 0 ; j + h < self.sortArr.count ; j+=h) {
                if ( ([self.sortArr[j] floatValue] > [self.sortArr[j+h] floatValue])) {
                    
                    [self exchargeIndex:j+h otherIndex:j];
                }
            }
            
        }
        
        h = h/3;
    }
    
    
}




@end
