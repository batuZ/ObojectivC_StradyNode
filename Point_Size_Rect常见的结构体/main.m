//
//  main.m
//  Point_Size_Rect常见的结构体
/*
        CG 核心绘图框架
        NS CG的别名，与ＣＧ用法完全相同
        结构体类型可以像基本类型一样声明变量
 
    NSPoint & CGPoint
        double x    Ｘ坐标
        double y    Ｙ坐标
 
    NSSize  & CGSize
        double width    宽
        double height   高
 
    NSRect  & CGRect
        point   double x    Ｘ坐标
                double y    Ｙ坐标
        size    double width    宽
                double height   高
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
  
        //创建方法
        CGPoint point1; //1 先创建再赋值
        point1.x =8.99;
        point1.y =4.44;
        CGPoint point2 = {3.44,1.76}; //2 创建同时赋值
        CGPoint point3 = {.x=3,54};   //3 只给其中一个变量赋值
        //ＯＣ特有的创建并赋值方法
            // CGXxxx  CGXxxxMake
            // NSXxxx  NSMakeXxxx
        
        CGPoint point4 = CGPointMake(3.14, 1.44);
        NSPoint point5 = NSMakePoint(3.14, 1.44);
        
        CGSize size1 = CGSizeMake(5.5, 6.3);
        
        CGRect rect1 = CGRectMake(3.14, 1.44, 5.5, 6.7);
        CGRect rect2 = {point2,size1};
        rect2.origin.x = 5.4;
        rect2.origin.y = 8.2;
        rect2.size.height = 3.14;
        rect2.size.width = 3.33;
        
        
    }
    return 0;
}
