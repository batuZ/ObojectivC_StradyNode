//
//  main.m
//  NSArray和NSString互相转换
/*
 
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //把数组转成字符串
        NSArray *arr1 = @[@"a",@"b",@"cc",@"dd",@8];
        NSString *str1 = [arr1 componentsJoinedByString:@"*"];
        NSLog(@"-->%@",str1);
        
        //把字符串转成数组
        NSString *str2 = @"asd,ewq,rtt,ggp";
        NSArray *arr2 = [str2 componentsSeparatedByString:@","];
        NSLog(@"--->%@",arr2);

    }
    return 0;
}
