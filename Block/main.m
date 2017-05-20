//
//  main.m
//  Block
/*
    Block 是一个类型，可以定义一个变量，这个变量就是一个代码块
    格式：
 
     返回类型  ^变量名   形参    ^传入形参及值  值（Block是代码块）
        int (^myBlock)(int) = ^(int aNum){代码块；return 0;};
                    定义变量 ＝ 赋值；
                 string str = @"xxxxxxxxx";
 
 
 */


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //无参无返回－－－－－－－－－－－－－－－－－－－
        void (^myBlock1)() = ^(){//无参的话，前面的括号可以不写
                                 //void (^myBlock1)() = ^{
            NSLog(@"无参无返回");
        };
        //使用：
        myBlock1();
        
        
        //有参无返回－－－－－－－－－－－－－－－－－－－
        void (^myBlock2)(int,int)= ^(int aNum,int bNum){
            NSLog(@"有参无返回test --> %d" , aNum+bNum);
        };
        //使用：
        myBlock2(25,31);
        
        
        //有参有返回------------------------------------
        int (^myBlock3)(int,int)= ^(int aNum,int bNum){
            return aNum+bNum;
        };
        
        //重新赋值
        myBlock3 = ^(int aNum,int bNum){
            return aNum-bNum;
        };
        
        //使用：
        int ss = myBlock3(225,131);
        NSLog(@"有参有返回，--> %d",ss);
        
    }
    return 0;
}
