//
//  aBaby.m
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import "aBaby.h"
#import "baoMu.h"
@implementation aBaby
-(void)hungry{
    NSLog(@"我饿啦！");
    //调用自己类里的BaoMu变量，这个类在创建时就被要求遵守lookBaby协议
    [self.bm letEat];
}
-(void)tierd{
    NSLog(@"我困啦！");
    //调用自己类里的BaoMu变量
    [self.bm letSleep];
}
@end
