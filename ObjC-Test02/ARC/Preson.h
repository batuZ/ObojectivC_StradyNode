//
//  Preson.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/25.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Dog.h"
@class Dog;

@interface Preson : NSObject

@property (nonatomic)Dog* dog;

-(void) eat;
@end
