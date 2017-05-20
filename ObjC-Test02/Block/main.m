/*
 Block
 
 1\ 重要的类型，比如用于方法回调
 2\ 一个没有名称的代码段，可以理解为内存中的一个空间，并用指针变量指向他
 3\ 声明方法
 int  <^myBlock>(int,float)=^(num1,num2){retun 0;};
 返回值   变量名      形参类型        形参      代码块
 */


#import <Foundation/Foundation.h>
#import "Master.h"
Block jia(){
    return ^(int s1,int s2){NSLog(@"---> %d",s1+s2);};;
}
Block cheng(){
    return ^(int s1,int s2){NSLog(@"---> %d",s1*s2);};;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //示例：
        float (^my1)(float,float) = ^(float s1,float s2){return s1*s2;};
       // NSLog(@"%.1f", my1(3,4));
        
        //    变量   ＝   内存段＼代码块
        void(^my2)() = ^{NSLog(@"gggg");};
        //my2();
        
        //赋值
        void (^my3)(int,int);
        my3 = ^(int s2,int s1){NSLog(@"%d",s1+s2);};
        //my3(4,5);
        my3 = ^(int d1,int d2){NSLog(@"%d",d1*d2);};
        //my3(4,5);
        
        //当做返回值
        BlockU my4;
        my4 = [Master fun];
        my4(4,5);
    }
    return 0;
}





