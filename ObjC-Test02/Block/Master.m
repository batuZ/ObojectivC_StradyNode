//
//  Master.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/26.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "Master.h"

//Extension 多用方法的私有化
@interface Master()
{
    int count;
}
@property float Hight;
-(void)myTest;
+(void)myTT;
@end

@implementation Master
-(void)myTest{
    count = 55;
    _Hight = 44.5;
}
+(BlockU)fun{
    return ^(int s1,int s2){
        NSLog(@"%d",s1+s2);
    }
}
@end
