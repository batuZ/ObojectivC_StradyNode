//
//  main.m
//  Block_typedef
/*
 
    typedef 自定义类型，可以定义一个包括多个已有类型和特定结构的新类型
    用来声明具有特性的变量。
 
        这里只用 typedef 定义Block的新类型
        就是把某一种形式的Block 定义成一个新的特定类
        示例在 main;
        扩展示例在 void test()
 
    可以用于 基本数据类型、数组、指针、函数指针、结构体、枚举和Block
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //先定义一个Block
        void (^myBlock)() = ^{
            NSLog(@"先定义一个Block");
        };
        myBlock();
        
        //把一个无参无返回的Block 定义成一个新的类型，无参无返回是其特性
        //然后就可以用这个新类型声明变量并赋值，需满足其特性
        
        typedef void (^blockType)();
        blockType bT = ^{
            NSLog(@"定义了一个BlockType");
        };
        bT();
        
        blockType bT1 = ^{
            NSLog(@"定义了一个BlockType111");
        };
        bT1();
        
        //再定义一个 有两个形参和返回值特性的 BlockType 类型
        
        typedef int (^BlockType)(int,int);
        BlockType BT1,BT2;
        //给新类型的变量赋值
        BT1 = ^(int a ,int b){
            return a+b;
        };
        BT2 = ^(int a,int b){
            return a-b;
        };
        
        int ss = BT1 (9,4);
        int dd = BT2 (9,4);
        
        NSLog(@"BT1--> %d, BT2 --> %d",ss,dd);
        
    
    }
    return 0;
}
void test(){
    
    //没弄明白，需要去网上查下Typedef的更多用法
    /*
    typedef NSArray *(^ss)(int,int);
    ss e;
    e = ^(int a , int b ){
        NSArray *arr = {a , b};
        return arr;
    };
    NSArray *aarr = e(4,5);
     */
}

