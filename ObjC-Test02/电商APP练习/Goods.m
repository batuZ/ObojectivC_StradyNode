//
//  Goods.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "Goods.h"

@implementation Goods
-(Goods*)initWithTitle:(NSString*)title howMuch:(double)money data:(XData)data{
    self = [super init];
    if  (self){
        self.goodsTitle = title;
        self.howMuch = money;
        self.data = data;
    }
    return self;
}
-(void)dealloc{
    NSLog(@"商品销毁") ;
    [super dealloc];
}
@end
