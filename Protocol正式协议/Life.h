//
//  Life.h
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Life1.h"
@protocol Life <NSObject,Life1>

-(void)eat;

@end
