//
//  Buyer.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "preson.h"
#import "Goods.h"
@interface Buyer : preson

@property double hasMoney;
@property int buyCount;
@property (retain)Goods* goods;

-(Buyer*)initWithName:(NSString*)name andAge:(int)age andHasMoneny:(double)moneny;

@end
