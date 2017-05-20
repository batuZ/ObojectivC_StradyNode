//
//  aWomen.h
//  学习笔记
//
//  Created by 张智 on 16/5/29.
//  Copyright © 2016年 张智. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Potocol_MyStyle.h"
#import "aMan.h"
@interface aWomen : NSObject <Potocol_MyStyle>

@property(nonatomic,assign) aMan *theMan;

@end
