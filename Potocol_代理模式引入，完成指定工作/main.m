//
//  main.m
//  Potocol_代理模式引入，完成指定工作
/*
 
    引入代理人，完成特定工作
    
    传入的对象，代理完成某个功能，称为代理模式，如例中，传入的baoMu代替Baby完成let动作。
 
    某些方法不需要自己来做，可以由代理人来完成，同时通过协议来约束代理人必须要做的事
 
        例如，一个小号 能力值为 5  ，当获得一把武器，小号的能力增加，同时获得装备特性
             小号是战士， 武器只限战士和骑士用，这个武器要遵守这个协议
            
            用于一个APP不同页面之间传值；
 */


#import <Foundation/Foundation.h>
#import "aBaby.h"//需要被代理的类
#import "baoMu.h"//代理类
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //正常创建俩个类
        baoMu *baomu1 = [baoMu new];
        aBaby *baby1  = [aBaby new];
        //把遵守lookBaby协议的BaoMu 赋值给Baby的bm变量
        baby1.bm = baomu1;
        //当baby执行一个动作时，可以调用受协议约束的BaoMu类型中的方法
        [baby1 hungry];
        [baby1 tierd];
        
    }
    return 0;
}
