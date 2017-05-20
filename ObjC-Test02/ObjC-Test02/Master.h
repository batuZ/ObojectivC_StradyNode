//
//  TestClass01.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/18.
//  Copyright © 2017年 BT. All rights reserved.


#import <Foundation/Foundation.h>
#import "protocol_1.h" // 引入协议
#import "Protocol_2.h"

@interface Master : NSObject <protocol_1> //使用此类则必须同时遵守其协议
@property(nonatomic ,retain) NSString* title;
@end
