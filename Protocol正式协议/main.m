//
//  main.m
//  Protocol正式协议

/*
   1、 让一个类必须实某些方法 是一个.h的头文件
           实现接口功能
   2､ 流程：
        定义协议------> Work.h
            －－在类的头文件中class.g采纳（指定）协议------> Person.h
                －－(必须)在类的class.m中实现协议中的方法------> Person.m
    
   3､ 一个类可以遵首一个或多个协议 见Person.h
   4､ 协议遵守的协议，引用类也要一起遵守 见Life.h --> Life1.h
 
   5､ 必须导入协意的头文件
 
   6、不能声明变量
 
   7、一个协议可以被多个类遵守
 
   8､ 建议创建协议时尽量以 protocol+行为.h 为命名标准 ，
        说明这个文件是某个行为的协议。
 
    9､ 协议的可选项
        @protocol
 
        @required -->  从这里到下个修饰选项前的方法是必须要实现的
 
        @optional -->  从这里到@end的方法是可选实现的。
 
        @end
 
 
    示例见Person.h,Person.m,Work.h
 
 */


#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p1 = [Person new];
        [p1 doWork];
        [p1 endWork];
        [p1 eat];
        [p1 sleep];
    }
    return 0;
}
