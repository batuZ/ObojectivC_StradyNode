//
//  test.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/25.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^Block)(int,int);

@interface test : NSObject
@property Block pp;
@property Block aa;
+(Block)Plus;
+(Block)add;
@end

