//
//  main.m
//  小知识点
//
/*
 
    1､自定义类 创建自定义类的对象
         person *p = [person new];
 
    2、NSLog(@" %@ -> NSObject ",NSString,SNArray...)
                %d -> int  , int
                %.2f -> float , float 显示小数点后两位
                %p ->  &m 取变量地置
 
    3、@property (nonatomic, assign,           readwrite)int age;
                  无线程保护，直接赋值(基础类型时)，可读写
       @property(atomic,  strong,           readonly) int hight;
                 线程保护，强指针（ＮＳ指针变量时）， 只读
 
    4､类方法？
 
    5、批量注示及解注示  command + /
 
    6、快速提示，助记符，把代码段拉到右下角 ｛ ｝ 中
        < # 内容 # >
    7､ －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
 占位符：
 ％d		整型		35
 ％lu
 %ld	NSUInteger
 %f		小数		2.33f		％.2f	显示小数点后两位
 ％@		字符串		“是的”		％4
 ％c		字符		‘A’
 ＼n		换行
 －－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－
    8､转换成字符串
        NSStringFromRange
 
    9、 int s  = arc4random() % 10 ;  随机拿到0到10之间的整数

    10 、 快速包装成ＯＣ对象 @(基本类型变量名) @3  @2.1
         快速创建数组用 @[@"",@"",@"",,,]
         快速创建字典用 @{key:value,key:value,key:value,,,}
 
 */

#import <Foundation/Foundation.h>
#import "person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        };
        
        //类方法？
        person *p1 = [person newPersonName:@"zhangsan"];
        person *p2 = [person newPersonAge:33];
        NSLog(@"p2.age = %d",p2.age);
  NSLog(@"fff%d",r);
  
    }
    return 0;
}


