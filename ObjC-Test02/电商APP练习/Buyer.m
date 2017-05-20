//
//  Buyer.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "Buyer.h"

@implementation Buyer
-(Buyer*)initWithName:(NSString*)name andAge:(int)age andHasMoneny:(double)moneny{
    self = [super init];
    if(self){
        self.Name = name;
        self.age = age;
        self.hasMoney=moneny;
    }
    return self;
}
- (void)dealloc
{
  //  [_goods release];
    NSLog(@"买家走了")  ;
    [super dealloc];
}
@end
