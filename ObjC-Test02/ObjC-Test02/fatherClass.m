//
//  fatherClass.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/19.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "fatherClass.h"

@implementation fatherClass
-(void)PrintItm{
    NSLog(@"%@",self.faItm);
    NSLog(@"%@",_faItm);
}
@end
