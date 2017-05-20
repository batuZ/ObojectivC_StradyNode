//
//  main.m
//  NSNumber
/*
    NSNumber 是ＯＣ里处理数字的类
    数组和字典中只能放ＯＣ对象
    要通过NSNumber把基本数据类型进行包装后才能放进数组和字典
    基本数据类型：int\float\double＼bool\
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *arr = [NSMutableArray array];
        // 装入
        int a =99;
        NSNumber *intObj = [NSNumber numberWithInt:a];
        [arr addObject:intObj];
        
        float b = 3.14;
        NSNumber *floatObj = [NSNumber numberWithFloat:b];
        [arr addObject:floatObj];
        
        double c = 4.33;
        NSNumber *doubleObj = [NSNumber numberWithDouble:c];
        [arr addObject:doubleObj];
        
                // 简写
        
        [arr addObject:@(a)];
        [arr addObject:@88];
        [arr addObject:@9.77];
        
        NSLog(@"%@",arr);
        
        // 取出
        
        NSNumber *n1  = arr[0];
        int aa = [n1 intValue];
        float bb = [arr[1] floatValue];
        
        
    }
    return 0;
}
