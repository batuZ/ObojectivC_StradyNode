//
//  aBaby.h
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "protocol_lookBaby.h"
@class baoMu;

@interface aBaby : NSObject

//给Baby配了一个BaoMu,并限制这个对象必须遵守lookBaby协议
@property (nonatomic,strong)baoMu <protocol_lookBaby> *bm;

-(void)hungry;
-(void)tierd;

@end
