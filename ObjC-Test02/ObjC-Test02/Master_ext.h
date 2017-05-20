//
//  Master_ext.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/19.
//  Copyright © 2017年 BT. All rights reserved.
//
/*
        二、类扩展  
        扩展是分类的一种特殊形式：
        分类：  @interface Master (category)
        扩展：  @interface Master ()
     
        类扩展只有声明，没有实现，实现部份要写在主类的.m中
        声明可以写在单独的头文件中，也可以写在主类的.m中，这时扩展的内容是私有的
        可以扩展声明：字段＼属性＼方法
 
        {多用于声明私有方法}
 */
#import "Master.h"

@interface Master ()
{
    int tst;
}
@property (nonatomic) int TST;
-(void)getTST;
@end
