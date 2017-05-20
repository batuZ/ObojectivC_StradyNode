//
//  main.m
//  NSDate
/*
 
 NSDate 是ＯＣ中提供日期时间处理的类
 1､  获取当前时间
 2､  格式化显示时间
 3、  计算时间
 4、  日期时间对象的使用
 
 
 
 */


#import <Foundation/Foundation.h>
void formatTime(){
    
    NSDateFormatter *tf = [NSDateFormatter new];
    // yyyy 四位年份
    // MM   二位月份
    // dd   二位天
    // HH   二位24小时制
    // hh   二位12小时制
    // mm   二位分钟
    // ss   二们秒数
    tf.dateFormat = @"yyyy年MM月dd日HH点mm分ss秒";
    tf.dateFormat = @"yyyy-MM-dd HH:mm:ss";

}

void useDate (){
    //    2､  格式化显示时间 创建一个 时间格式 类对象 调用对象的dateFormat方法
    NSDateFormatter *dateF = [NSDateFormatter new];
    dateF.dateFormat = @"yyyy年MM月dd日HH点mm分ss秒";
    
    //    1､  获取当前时间    创建一个时间对象    默认为0时区，北京为东8区 ＋8Ｈ
    NSDate *t1 = [NSDate date];
    
    //    3、 计算时间
    NSDate *t2 = [NSDate dateWithTimeIntervalSinceNow:-24*60*60];
    
    //      输出日期
    NSString *str1 = [dateF stringFromDate:t1];
    NSString *str2 = [dateF stringFromDate:t2];
    
    NSLog(@"%@",str1);
    NSLog(@"%@",str2);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //拆分Date的元素
        
        NSDate *date1 = [NSDate date];
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        //cal component:要获得日期的哪部份 fromDate:date对象
      // NSDateComponents *comp = [cal component:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour fromDate:date1];
    }
    return 0;
}
