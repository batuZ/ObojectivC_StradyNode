//
//  Master.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/26.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^BlockU)(int s1,int s2);

@interface Master : NSObject
+(BlockU)fun;
@end
