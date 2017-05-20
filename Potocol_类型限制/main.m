//
//  main.m
//  Potocol_类型限制
/*
 
    在  声 明 变 量  时使用Potocol加以限制，使实例对象满足某些条件
        id 类型可以是作何对象
 
 */


#import <Foundation/Foundation.h>
#import "aMan.h"
#import "aWomen.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //未遵守Potocol_MyStyle协议的类
        aMan *man = [aMan new];
        //遵守Potocol_MyStyle协议的类
        aWomen *women = [aWomen new];
        
        //在声明变量时加了限制协议后，未遵守协议的类（man）会报错
        id <Potocol_MyStyle> obj = man;
        
        //在声明变量时加了限制协议后，遵守协议的类（woman）会成功
        id<Potocol_MyStyle> obj1  = women;
        [obj1 ZuoFan];
        [obj1 XiYiFu];
        
        //近一步限制
        aWomen<Potocol_MyStyle> *obj2  = women;
        [obj2 ZuoFan];
        [obj2 XiYiFu];
        
        //限制子类
        obj2.theMan = man;
        [obj2.theMan zhengqina];
    }
    return 0;
}
