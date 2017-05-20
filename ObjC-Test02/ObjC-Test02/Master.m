//
//  TestClass01.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/18.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "Master.h"
#import "Master_ext.h"
//------------------ 类扩展 -----------------
//@interface Master ()
//{
//    int tst;
//}
//@property (nonatomic) int TST;
//-(void)getTST;
//@end
//--------------------------------------------

@implementation Master
@synthesize TST= tst;

-(void)getTST{
    NSLog(@"%d", tst);
}

-(void)PrintProtocol_1{

}
-(void)PrintProtocol_11{

}
-(void) printProtocol_2{

}
@end

