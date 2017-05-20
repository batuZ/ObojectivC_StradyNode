//
//  main.m
//  Block当参数传递
/*
 
 
 */


#import <Foundation/Foundation.h>

//  Block当参数传递,myBlock作为参数传入--------------
void myWork(void (^myBlock)()){
    NSLog(@"起床");
    NSLog(@"工作");
    myBlock();
}
void test(){
    //  Block当参数传递,myBlock作为参数传入
    for (int i=1; i<10; i++) {
        //声明一个Block
        void (^myBlock)() = ^{NSLog(@"第%d天过去了",i);};
        //调用上面的方法，传过去个Block
        myWork(myBlock);
    }
}

//  Block当返回值传递,myBlock作为返回值传出--------------
//先把它定义成类
typedef void(^newType)();

//声明并实现一个方法，指定返回值类型为新定义的newblock类
newType test1(){
    newType s = ^{
        NSLog(@"Block作为返回值传出，需要把block，typedef成一个类");
    };
    return s;
}
//调用这个方法并使用其返回值
void test2()
{
    newType e = test1();
    e();
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        test2();
    }
    return 0;
}
