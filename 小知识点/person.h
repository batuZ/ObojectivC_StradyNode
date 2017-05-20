//
//  person.h
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject

//类方法
@property (nonatomic,assign) NSString* name;
@property(nonatomic,assign) int age;
+(instancetype)newPersonName:(NSString*)name;
+(instancetype)newPersonAge:(int)age;

@end
