//
//  protocol_1.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/19.
//  Copyright © 2017年 BT. All rights reserved.
/*
    协议
        只有头，没有实现
        只能声明方法
        可以指定选择实现的和必须实现的方法,默认为必须实现
             @optional //选择实现
             @required //必须实现
        协议也可以遵守协议
*/

#import <Foundation/Foundation.h>
#import "Protocol_2.h"

@protocol protocol_1 <NSObject,Protocol_2>

@required //必须实现
-(void)PrintProtocol_1;

@optional //选择实现
-(void)PrintProtocol_11;


@end
