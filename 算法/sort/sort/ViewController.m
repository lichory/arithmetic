//
//  ViewController.m
//  排序算法
//
//  Created by lichory on 16/6/14.
//  Copyright © 2016年 lichory. All rights reserved.
//

#import "ViewController.h"
#import "SelectedSort.h"
#import "BubbleSort.h"
#import "ShellSort.h"
#import "MergeSort.h"
#import "QuickSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray * sortArr = @[@(1),@(4),@(3),@(8),@(2),@(10),@(23),@(15),@(16),@(0),@(14)];
    /* 快速排序 通过递归的**/
    [self selectedSortWithArr:sortArr];
    
    /* 冒泡排序 **/
    [self bubbleSortWithArr:sortArr];
    
    /*shell 排序**/
    [self ShellSortWithArr:sortArr];
    
    /* 归并排序**/
    [self MergeSortWithArr:sortArr];
    
    /* 快速排序**/
    [self QuickSortWithArr:sortArr];
    
}


- (void)selectedSortWithArr:(NSArray<NSNumber*> *)sortArr {
    
    SelectedSort * sort = [[SelectedSort alloc]init];
    sort.sortArr = sortArr.mutableCopy;
    [sort startSort];
    [sort printSort];
}

- (void)bubbleSortWithArr:(NSArray<NSNumber*> *)sortArr {
    
    BubbleSort * sort = [[BubbleSort alloc]init];
    
    sort.sortArr = sortArr.mutableCopy;
    
    [sort startSort];
    [sort printSort];
}

- (void)ShellSortWithArr:(NSArray<NSNumber*> *)sortArr {
    ShellSort * sort = [[ShellSort alloc]init];
    
    sort.sortArr = sortArr.mutableCopy;
    
    [sort startSort];
    [sort printSort];
}

- (void)MergeSortWithArr:(NSArray<NSNumber*> *)sortArr {
    MergeSort * sort = [[MergeSort alloc]init];
    
    sort.sortArr = sortArr.mutableCopy;
    
    [sort startSort];
    [sort printSort];
}


- (void)QuickSortWithArr:(NSArray<NSNumber*> *)sortArr {
    QuickSort * sort = [[QuickSort alloc]init];
    
    sort.sortArr = sortArr.mutableCopy;
    
    [sort startSort];
    [sort printSort];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
