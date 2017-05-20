//
//  person.m
//  学习笔记
//
//  Created by 张智 on 16/5/28.
//  Copyright © 2016年 张智. All rights reserved.
//

#import "person.h"
#import "person_classAdd.h"
@implementation persons

//实现延展类中的方法
-(void)run{
    NSLog(@"延展中的方法调用主类中的变量 --> %d ",_age);
    NSLog(@"延展中的方法调用延展中的变量 %.3f ",_hight);
}

@end
