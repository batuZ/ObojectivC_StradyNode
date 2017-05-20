//
//  main.m
//  Block访问外部变量
/*
    知识点：在Block中是可以直接访问外部变量的
 
           访问方式为把值复制一份放在另一个地址，所以在Block中修改这个值，不会影响变量
 
           在block中是可以定义变量的！
 
           如果想定义一个可以在Block中可以修改的变量，
           需要在外部定义变量时前面加上__block,
           虽然还是复制进Block,但不再以const方式复制，使变量可修改
           同时，外部变量也会被修改，地址变为堆区，就是Block内的那个变量地址
            但，尽量不要在Block内修改外部变量
 
            全局变量是可以在Block中直接修的，没那么多说道！
 
    了解：
        全局Block 定义在函数外面的，或在函数内但没有捕获自动变量时
        栈Block  与全局的区别就是，是否引用了外部变量
        堆Block  是栈Block复制来的，全局Block复制没有作用，还是全局的。
 
 */


#import <Foundation/Foundation.h>
//全局变量
int s=0;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int m = 11;
        int mm = 22;
        __block int mmm = 33;
        void (^myBlock)()=^{
            int mm = 222;
            mmm = 333;
            NSLog(@"访问外部变量 m = %d",m);
            NSLog(@"内部声明变量 mm = %d",mm);
            NSLog(@"访问外部可修改的变量 mmm = %d",mmm);
            
            s = 90;
            NSLog(@"直接访问及修改全局变量 --> %d",s);
        };
        myBlock();
    }
    return 0;
}
