//
//  main.m
//  NSDictionary字典
/*
 字典是无序的，value和key 必须是对象类型
 1、创建字典
 2､ 查询长度
 3､ 通过ＫＹＥ 获取ＶＡＬＵＥ
 4､ 遍历字典
 
 5、NSMutableDictionary
 
 
 */


#import <Foundation/Foundation.h>
//    1、创建字典
void Dictionary (){
    //空字典，不能修改，无义意
    NSDictionary *dic1 = [NSDictionary dictionary];
    //有一个键值对 --------- value + key
    NSDictionary *dic2 = [NSDictionary dictionaryWithObject:@"batu" forKey:@"BT"];
    //有多组键值对的字典 －－－－ 常用 --------- value + key
    NSDictionary *dic3  = [NSDictionary dictionaryWithObjectsAndKeys:@"batu",@"BT",@"zhangzhi",@"ZZ",@"hanxiaocui",@"HXC" ,nil];
    
    //快速创建  －－－－ 常用 ---------  @key:@value
    NSDictionary *dic4 = @{@"BT":@"batu",@"ZZ":@"zhangzhi",@"HXC":@"hanxiaocui"};
    
    NSLog(@"%@",dic4);
}
void useIt(){
    NSDictionary *dic4 = @{@"BT":@"batu",@"ZZ":@"zhangzhi",@"HXC":@"hanxiaocui"};
    //    2､ 查询长度
    NSUInteger ss = dic4.count;
    //    3､ 通过Key获取Value
    NSString *str1 = [dic4 objectForKey:@"BT"];
    //      4､ 遍历字典
    for (NSString *key in dic4) {
        str1 = [dic4 objectForKey:key];
        NSLog(@"%@ = %@",key,str1);
    }
    
    //      4､ 遍历字典 块方法
    [dic4 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@=%@",key,obj);
    }];
    
}

    //      5、NSMutableDictionary
void NSMutableDictionar(){
    
    //创建个空字典
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    
    //增
    [dic setValue:@"batu" forKey:@"BT"];
    [dic setValue:@"zhangzhi" forKey:@"ZZ"];
    [dic setValue:@"hanxiaocui" forKey:@"HXC"];
    
    //删
//    [dic removeObjectForKey:@"BT"];
//    [dic removeAllObjects];
    
    //改
    [dic setObject:@"batussss" forKey:@"BT"];
    dic[@"BT"] = @"9999batu8888";

    //查
    NSArray *arrKey = [dic allKeys];
    
    NSLog(@"%@",dic);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableDictionar();
    }
    return 0;
}
