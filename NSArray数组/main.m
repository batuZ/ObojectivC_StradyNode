//
//  main.m
//  NSArray数组
/*
 
    1、特性：
        有序的，只能存ＮＳＯＢＪＥＣＴ，不可变
    2、创建数组的方法 createArray()
    3､ 常用方法
    4、读写到文件
 
    5、NSMutableArray
 
 
*/


#import <Foundation/Foundation.h>

// 2、创建数组的方法
void createArray(){
    // 空数组，没用〜建了没内容的数组不可变
    NSArray *arr1 = [NSArray array];
    //创建只有一个成员的数组
    NSArray *arr2 = [NSArray arrayWithObject:@"s"];
    //创建多成员数组 ，nil表示数组完成
    NSArray *arr3 = [NSArray arrayWithObjects:@"a",@"b",@"cc",@"dd",@8,nil];
    //用数组创建数组
    NSArray *arr4 = [NSArray arrayWithArray:arr3];
    //简写方式,-------------------------------------常用方法
    NSArray *arr5 = @[@"a",@"b",@"cc",@"dd",@8];
    //NSLog可以直接打印数组
    NSLog(@"数组 －－> %@",arr4);
}

//   3､ 常用方法
void howToUse (){
    
    NSArray *arr = [NSArray arrayWithObjects:@"a",@"b",@"cc",@"dd",@8,nil];
    
    // 1) 拿到成员数量
    NSUInteger s =  arr.count;
    NSLog( @"%lu",s);
    
    // 2) 通过下标拿到成员值
    NSLog(@"->%@",arr[0]);//-------------------常用方法
    NSLog(@"-->%@",[arr objectAtIndex:1]);
    NSLog(@"--->%@",[arr lastObject]);
    NSLog(@"---->%@",[arr firstObject]);
    
    // 3) 通过成员值拿到其下标
    NSInteger xiaBiao =[arr indexOfObject:@"cc"];
    NSLog(@"%lu",xiaBiao);

    // 4) 是否包含某元素
    if([arr containsObject:@"dd"]){
        NSLog(@"有");
    }else{
        NSLog(@"没");
    }
}
//    4、读写到文件
void wirteRead (){
    
    NSArray *arr1 = @[@"a",@"b",@"cc",@"dd",@8];
    //把数组写入文件
    [arr1 writeToFile:@"/Users/Batu/Desktop/a.plist" atomically:YES];
    //从文件读出数组
    NSArray *arr2 = [NSArray arrayWithContentsOfFile:@"/Users/Batu/Desktop/a.plist"];
    NSLog(@"-=-=->%@",arr2);
    
}

//   5、NSMutableArray
void NSMutablearray(){
    //创建空数组
    NSMutableArray *mtArr = [NSMutableArray array];
    
    //1)增加内容
        //一次增加一个成员
        [mtArr addObject:@"a"];
        //增加一个数组
        NSArray *arr1 = @[@"b",@"c",@"e",@"h"];
        [mtArr addObjectsFromArray:arr1];
        //插入成员
        [mtArr insertObject:@"d" atIndex:3];
    
    //2)删除内容
//        根据内容
//        [mtArr removeObject:@"a"];
//        根椐索引
//        [mtArr removeObjectAtIndex:3];
//        全部删掉
//        [mtArr removeAllObjects];
    
    //3)修改内容
            mtArr[0] = @"aa";
    
    //4)查找内容
    if([mtArr containsObject:@"j"]){
        NSLog(@"--> 有");
    }else{
        NSLog(@"--> 没有");
    }
        
    //5) 交换两成员位置，用于打乱数组顺序
    [mtArr exchangeObjectAtIndex:5 withObjectAtIndex:2];
    
    for(int i=0;i<mtArr.count;i++){
    
        [mtArr exchangeObjectAtIndex:i withObjectAtIndex: arc4random() % (mtArr.count-1)];
        // int s  = arc4random() % 10 ;  随机拿到0到10之间的整数
    }

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSMutablearray();
    }
    return 0;
}
