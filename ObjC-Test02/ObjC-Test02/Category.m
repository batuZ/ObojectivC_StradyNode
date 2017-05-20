//
//  testClass02.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/18.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "Category.h"

@implementation Master (Category)
-(void) categoryTestFuc
{
    NSLog(@"这是一个分类方法，%@",self.title);
}
@end
