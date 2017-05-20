//
//  seller.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "preson.h"
#import "Goods.h"
#import "Buyer.h"
@interface seller : preson

@property int hasGoods;
@property double hadMoney;
@property (retain)Goods* aGoods;

-(seller*)initWithGood:(Goods*)good;

-(void)SellGoods:(Buyer*)buy Goods:(Goods*)gds;

@end
