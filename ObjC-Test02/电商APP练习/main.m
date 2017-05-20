//
//  main.m
//  电商APP练习
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "preson.h"
#import "Buyer.h"
#import "seller.h"
#import "Goods.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //商品
        XData someData;
        Goods *gds =[[Goods alloc] initWithTitle:@"Iphone6" howMuch:4999 data:someData];
        NSLog(@"商品：%ld",gds.retainCount);
        
        //卖家
        seller *sell = [[seller alloc] initWithGood:gds];
        [gds release];
        NSLog(@"商品：%ld",gds.retainCount);

        //买家
        Buyer *buy = [[Buyer alloc] initWithName:@"haha" andAge:34 andHasMoneny:10000];
        
        [sell SellGoods:buy Goods:gds];
        
//        [sell release];
//        [buy release];
//        [gds release];
        NSLog(@"商品：%ld",gds.retainCount);
//        NSLog(@"卖家：%ld",sell.retainCount);
//        NSLog(@"买家：%ld",buy.retainCount);
        
        
        NSLog(@"go home!");
    }
    return 0;
}
