//
//  fatherClass.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/19.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface fatherClass : NSObject
{
@protected
    NSString* _faItm;
}
@property (retain)NSString* faItm;
-(void)PrintItm;
@end
