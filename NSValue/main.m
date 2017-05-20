//
//  main.m
//  NSValue
/*
 
    NSValue的子类，可以把Ｃ或ＯＣ中的基本数据类型，结构体，指针，OBJ id包装成ＮＳ对象
        便于这些对象装入数组和字典
 
    NSNumber是NSValue的子类。
 
    主要是用来对结构体包装的
 
*/


#import <Foundation/Foundation.h>
typedef struct{
    int d;
    float f;
}myStruct;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        CGSize size = CGSizeMake(3, 4); //常用结构
        myStruct myS ={3,5.5};          //自定义结构
        NSMutableArray *arr = [NSMutableArray array];
        
        //包装方法
        NSValue *sizeVal = [NSValue valueWithSize:size];//常用结构
        NSValue *mySVal = [NSValue valueWithBytes: &myS objCType:@encode(myStruct)];//自定义结构
        
        //加入数组
        [arr addObject:sizeVal];
        [arr addObject:mySVal];
        
        //取出
        CGSize si = [arr[0] sizeValue];
        myStruct getMystr ;
        [arr[1] getValue:&getMystr];
        
        NSLog(@"%d,%f",getMystr.d,getMystr.f);
    }
    return 0;
}
