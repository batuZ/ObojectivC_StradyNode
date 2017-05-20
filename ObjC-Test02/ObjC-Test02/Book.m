//
//  Book.m
//  ObjC-Test02
//
//  Created by 张智 on 17/3/18.
//  Copyright © 2017年 BT. All rights reserved.
//

#import "Book.h"

@implementation Book

@synthesize
BookName=m_bookName,
ZuoZhe=m_zuozhemen,
Pages=m_bookPageCount,
ID=m_bookId;

-(instancetype)init{
    self = [super init];
    if(self)
    {
        //do Something...
    }
    return self;
}
-(instancetype)initWithName:(NSString*) name{
    self = [super init];
    if (self) {
        self.BookName = name;
    }
    [self autorelease];
    return self;
}
-(instancetype)initWithName:(NSString*) name andPages:(int) page{
    self = [super init];
    if (self) {
        m_bookName = name;
        self->m_bookPageCount = page;
    }
    return self;
}
+(void)initialize{
    classCount = 0;
    classTitle = @"new class";
}
+(instancetype)book{
//    Book *bo=[Book new];
//    [bo autorelease];
//    return bo;
    return [[[self alloc]init]autorelease];
}
-(void)dealloc{
    //把所有ＮＳ。。。的成员release一遍
    [m_zuozhemen release];
    [super dealloc];
}
-(void)printName{
    NSLog(@"书名：%@",self->m_bookName);
}
-(void)setPage:(int) number{
    self->m_bookPageCount = number;
    NSLog(@"设置成功，共%d页",self->m_bookPageCount);
}
-(void)resetID_PrintID{
    NSLog(@"重置成功，新ＩＤ为：");
}
-(void)printZouZhe{
    for (int i=0; i<self->m_zuozhemen.count; i++) {
        id ss = self->m_zuozhemen[i];
        NSLog(@"%@",ss);
    }
}
+(int)getClassCount{
    return classCount;
}

@end


