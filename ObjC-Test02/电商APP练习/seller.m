//
//  seller.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "seller.h"

@implementation seller

-(seller*)initWithGood:(Goods*)good{
    self =[super init];
    if(self)
    {
        self.aGoods = good;
    }
    return self;
}

-(void)SellGoods:(Buyer*)buy Goods:(Goods*)gds{
    NSLog(@"---->:%ld",gds.retainCount);
    if (buy.hasMoney>gds.howMuch)
    {
        buy.goods = self.aGoods;
        NSLog(@"---->:%ld",gds.retainCount);
        buy.hasMoney -=self.aGoods.howMuch;
        buy.buyCount++;
        self.hadMoney += self.aGoods.howMuch;
        self.hasGoods--;
        NSLog(@"---->:%ld",_aGoods.retainCount);

        NSLog(@"done!");
    }
    else
    {
        NSLog(@"noMoney!");
    }
}
- (void)dealloc
{
   // [_aGoods release];
    NSLog(@"卖加走了")  ;
    [super dealloc];
}
@end
