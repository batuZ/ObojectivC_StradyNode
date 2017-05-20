//
//  Goods.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct T{
    int hour;
    int min;
    int sec;         }XTime;
typedef struct D{
    int year;
    int month;
    int day;
    XTime time;     }XData;

@interface Goods : NSObject
@property (nonatomic,retain) NSString* goodsTitle;
@property (nonatomic,assign) double howMuch;
@property (nonatomic,assign) XData data;

-(Goods*)initWithTitle:(NSString*)title howMuch:(double)money data:(XData) data;

@end
