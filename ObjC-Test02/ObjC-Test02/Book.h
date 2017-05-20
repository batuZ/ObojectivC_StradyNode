//
//  Book.h
//  ObjC-Test02
//
//  Created by 张智 on 17/3/18.
//  Copyright © 2017年 BT. All rights reserved.

/*
    定义一个类
    定义字段
    定义属性
    关联属性与字段
    定义实例构造方法
    定义类构造方法
    实现方法
 */

#import <Foundation/Foundation.h>

//类变量
static NSString* classTitle;
static int classCount;

@interface Book : NSObject

{
    //定义字段和作用域
@private
    NSString * m_bookName;          //书名
    int m_bookPageCount;            //页数
    guid_t m_bookId;                //编号
    NSMutableArray *m_zuozhemen;   //作者们
}

//定义属性，与 int ss {set;get;} 类似
@property (retain)NSString *BookName;
@property (retain)NSMutableArray *ZuoZhe;
@property int Pages;
@property guid_t ID;
//定义属性
// 1,自动生成字段： _属性名
//自动生成 get; set; 方法
//-(void)setBookName:(NSString *)BookName;
//-(NSString*)BookName;

//也可以通过.m中@synthesize关联两者
//@synthesize BookName = m_bookName
/* 定义属性的内存相关参数
    读写：
        readwirte/readonly
    原子：
        nonatomic
        atomic
    内存：
        assign ：直接赋值，用于基本类型
        retain ：set时 ，先release原来的，再retain新的，用于NS实例对象
        copy   ：set时 ，先release原来的，再copy新的，用于NS实例对象
*/

//实例构造方法
-(instancetype)init;
-(instancetype)initWithName:(NSString*) name;
-(instancetype)initWithName:(NSString*) name andPages:(int) page;
//析构方法
-(void)dealloc;

//实例方法
-(void)printName;
-(void)setPage:(int) number;
-(void)resetID_PrintID;
-(void)printZouZhe;

//唯一的类构造方法，第一次访问类时调用
//将在实例构造方法之前调此方法，只调一次
//与静态类或全局类作用类似，｛可以用于管理此类的所有实例｝
+(void)initialize;

//类方法
+(int)getClassCount;
//类实例化对象方法，instancetype检查返回类型是否匹配
+(instancetype)book;

@end
