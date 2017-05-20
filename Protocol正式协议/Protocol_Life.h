//
//  Protocol_Life.h
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol_Life1.h"
@protocol Protocol_Life <NSObject,Protocol_Life1>
-(void)eat;
@end
