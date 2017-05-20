//
//  Protocol_Work.h
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Protocol_Work <NSObject>

//方法列表
-(void)doWork;
-(void)endWork;

@required //必须实现的
@optional //可选实现的

@end
