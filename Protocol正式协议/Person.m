//
//  Person.m
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import "Person.h"

@implementation Person
//实现Work协议中的方法
-(void)doWork{
    NSLog(@"实现Work协议中的声明的方法-->干活");
}
-(void)endWork{
    NSLog(@"实现Work协议中的声明的方法-->干完活了");
}
//实现Lile协议中的方法
-(void)eat{
    NSLog(@"实现Life协议中的声明的方法-->吃饭");
}

//实现Life协议所遵守的其它协议Life1中的方法
-(void)sleep{
    NSLog(@"实现Life协议遵守的协议life1中声明的方法-->睡觉");
}


@end