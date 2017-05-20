//
//  main.m
//  Extendsion 类的延展
/*
 
    Extendsion 类的延展：
        就是匿名的扩展方法，为一个类增加原来没有的方法和变量，延申其范围
        相当于主类的另一个.h文件
        格式如
            给person 增加的延展方法person_classAdd.h
        
    作用：
        1､可以定实例变量，声明方法
        2、在主类的.m文件中实现方法

    用例：main.h
 
 */


#import <Foundation/Foundation.h>
//引入头文件
#import "person.h"
#import "person_classAdd.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        persons *p = [persons new];
        p.hight =  9.8;
        p.age    =  89;
        [p run];
    }
    return 0;
}




