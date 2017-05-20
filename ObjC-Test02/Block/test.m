//
//  test.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/25.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "test.h"

@implementation test
+(Block)Plus{
    return  ^(s1,s2){NSLog(@"---> %d",s1+s2);};
}
+(Block)Add{
    return ^(p1,p2){NSLog(@"---> %d",p1*p2);};
}
@end

