//
//  preson.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/20.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum S{man,women} iSex;

@interface preson : NSObject
@property (retain) NSString * Name;
@property iSex sex;
@property int age;
-(void)test;
@end

