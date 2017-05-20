//
//  Person.h
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol_Work.h" //---------->可以采纳多个协议
#import "Protocol_Life.h"
@interface Person : NSObject <Protocol_Work,Protocol_Life>//--->采纳（指定）协议

@end
