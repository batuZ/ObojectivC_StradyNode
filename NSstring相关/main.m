//
//  main.m
//  NSstring相关
/*
 
 1､ 创建字符串
 2、把字符串写入文件
 3、从文件中读取字符串
 4、检测字符串是否包含某内容
 5、字符串截取
 6、替换字符串
 7、字符串转换成数字和Ｃ与ＯＣ字符串之间转换
 
 8、NSMutableString
 // 1) 创建一个NSMutableString对象
 NSMutableString *mtStr = [NSMutableString string];
 
 // 2) appendFormat 把新内容加到原字符串后面
 [mtStr appendFormat: @"abcdefghijklmn"];
 
 // 3) 删掉串中的一部份
 [mtStr deleteCharactersInRange:NSMakeRange(3, 6)];
 
 // 4)把一段字符串插入另一个字符串中间指定位置
 [mtStr insertString:@"666" atIndex:3];
 
 // 5)把字符串中的一部份替换成另一个字符串
 [mtStr replaceCharactersInRange:NSMakeRange(3, 6) withString:@"888888"];
 NSLog(@"%@",mtStr);
 
 // 6)用新字符串覆盖原字符串
 
 
 */


#import <Foundation/Foundation.h>

//  2、把字符写入文件
void writetoFiles(){
    
    NSString *str = @"ttttt";
    NSLog(@"%@",str);
    
    //str writeToFile:文件保存路径 atomically:保护 encoding:编码 error:是否成功
    NSString *filePath = @"/Users/Batu/Desktop/a.plist";
    [str writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}

//  3､ 从文件读入一个字符串
void rff(){
    NSString *filePath = @"/Users/Batu/Desktop/a.plist";
    NSString *str = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"-->%@",str);
}
//  4、检测字符串是否包含某内容 检测前缀
void ishasPrefix(){
    NSString *str = @"http://baidu.com";
    if([str hasPrefix:@"http://"]){
        NSLog(@"YES");
    }else{
        NSLog(@"NO");
    }
}
//  检测字符串是否包含某内容 检测后缀
void ishasSuffix(){
    NSString *str = @"xxx.jpg";
    
    if([str hasSuffix:@".jpg"]){
        NSLog(@"YES");
    }else{
        NSLog(@"NO");
    }
}
//  检测字符串是否包含否内容
void isRange (){
    NSString *str = @"www.baidu.com";
    NSRange r = [str rangeOfString:@"baidu"];
    NSLog(@"length = %lu,location = %lu",r.length,r.location);
}
//  5、字符串截取
void subString(){
    //0123456789
    NSString *str = @"www.baidu.com";
    //从5开始到到结束,包括5
    NSString *str1 = [str substringFromIndex:5];
    NSLog(@"-> %@",str1);
    //从开始到5的内容，不包括5
    NSString *str2 = [str substringToIndex:5];
    NSLog(@"--> %@",str2);
    //截取中间一部份,range 是从2开始，取5个,包括2
    NSRange r = {2,5};
    NSString *str3 = [str substringWithRange:r];
    NSLog(@"---> %@",str3);
    //查询特定字符位置，构成ＲＡＮＧＥ
    r.location = [str rangeOfString:@"b"].location;
    r.length = [str rangeOfString:@"u"].location-r.location+1;
    
    NSString *str4 = [str substringWithRange:r];
    NSLog(@"-----> %@",str4);
}
//  6､ 把字符串中所有的特定字符替换成指定的字符
void changestring(){
    NSString *str = @"fjdl;sajf;lejsal;kfdsl;afjdl;saj";
    NSString *str1 = [str stringByReplacingOccurrencesOfString:@";" withString:@"T"];
    NSLog(@"-> %@",str1);
}
//  7、字符串转换成数字和Ｃ与ＯＣ字符串之间转换
void convertTo(){
    
    //NSString to Number
    NSString *str1 = @"3";
    NSString *str2 = @"3.14";
    int i = [str1 intValue];
    float f = [str2  floatValue];
    double d = [str1 doubleValue];
    
    // C to OC
    char *s ="dsafdsafdsa";
    printf("--> %s\n",s);
    NSString *str3 = [NSString stringWithUTF8String:s];
    NSLog(@"--> %@",str3);
    
    // OC to C
    NSString *str4 = @"fdsfdsfdsafdasfdsa";
    char *s1 = [str4 UTF8String];
    printf("---> %s\n",s1);
}

//NSMutableString
void NSMutableStr (){
    
    // 1) 创建一个NSMutableString对象
    NSMutableString *mtStr = [NSMutableString string];
    
    // 2) appendFormat 把新内容加到原字符串后面
    [mtStr appendFormat: @"abcdefghijklmn"];
  
    // 3) 删掉串中的一部份
    [mtStr deleteCharactersInRange:NSMakeRange(3, 6)];
    
    // 4)把一段字符串插入另一个字符串中间指定位置
    [mtStr insertString:@"666" atIndex:3];
    
    // 5)把字符串中的一部份替换成另一个字符串
    [mtStr replaceCharactersInRange:NSMakeRange(3, 6) withString:@"888888"];
    NSLog(@"%@",mtStr);
    
    // 6)用新字符串覆盖原字符串
    
    mtStr.string = @"dddddddddddd";

}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableStr();
    }
    return 0;
}
