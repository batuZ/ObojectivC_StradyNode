//
//  main.m
//  NSRange结构体
/*
 
 
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //定义方法
        NSRange *r;//结构体指钱
        NSRange range;//结构体变量
        //1)
        range.location =9;
        range.length =7;
        //2)
        range =(NSRange){4,5};
        //3)
        NSRange r1 = {4,5};//----------->推荐
        //4)
        NSRange r2 ={.length = 9,.location =4};
        r2.length =1;
        //5
        NSRange r3 = NSMakeRange(8, 9);//--->推荐
        NSLog(@"%ld , %lu",r3.length,r3.location);
        NSLog(@"%@",NSStringFromRange(r2));
    }
    return 0;
}
