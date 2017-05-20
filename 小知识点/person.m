//
//  person.m
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import "person.h"

@implementation person
//实现类方法
+(instancetype)newPersonName:(NSString*)name{
    return [[self alloc] newPersonName:name];
}
+(instancetype)newPersonAge:(int)age{
    return [[self alloc] newPersonAge:age];
}
@end
