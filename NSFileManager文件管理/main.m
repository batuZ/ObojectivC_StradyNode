//
//  main.m
//  NSFileManager文件管理
/*
 
 
 */


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *filePath = @"/Users/Batu/Desktop/aa.txt";
        NSString *DirPath = @"/Users/Batu/Documents/ 360云盘/ＭacData/Xcode/学习笔记";
        NSString *tragPath = @"/Users/Batu/Desktop";
        //创建一个文件管理器，是一个单例对象，唯一的
        NSFileManager *fm = [NSFileManager defaultManager];
        
        //文件是否存在
        BOOL isHas = [fm fileExistsAtPath:filePath];
        
        //是否文件夹
        BOOL isDir;
        [fm fileExistsAtPath:DirPath isDirectory:&isDir];
        if(isDir){NSLog(@"这是个文件夹");}
        
        //是否可读
        if([fm isReadableFileAtPath:filePath])
            NSLog(@"可读的文件");
        
        //是否可写
        if ([fm isWritableFileAtPath:filePath])
            NSLog(@"可写的文件");
        
        //是否可删
        if ([fm isDeletableFileAtPath:filePath])
            NSLog(@"可删的文件");
        
        //获取文件信息
        NSDictionary *dic = [fm attributesOfItemAtPath:filePath error:nil];
        NSLog(@"%@",dic);
        
        //获取指定目录下的文件和子目录
        NSArray *arr = [fm subpathsAtPath:DirPath];//递归，效率低
        NSArray *arr1 = [fm subpathsOfDirectoryAtPath:DirPath error:nil]; //推荐这个方法
        
        //只获取指定目录下的子目录及文件
        NSArray *arr2 = [fm contentsOfDirectoryAtPath:DirPath error:nil];
        NSLog(@"%@",arr2);
        
        //创建目录
        // fm createDirectoryAtPath:文件路径 withIntermediateDirectories:YES会把没有的目录创建补全 attributes:属性字典 error:错误对象
        BOOL isOK =
        [fm createDirectoryAtPath:DirPath withIntermediateDirectories:YES attributes:nil error:nil];
        
        //创建文件
        // fm createFileAtPath:文件路径 contents:NSData类型的数据 attributes:文件的属性字典
        // NSData 是一个二进制数据流
        NSData *data = [DirPath dataUsingEncoding:NSUTF8StringEncoding];
        isOK =
        [fm createFileAtPath:filePath contents:filePath attributes:nil];
        
        //复制文件
        isOK =
        [fm copyItemAtPath:DirPath toPath:tragPath error:nil];
        
        //移动文件
        isOK = [fm moveItemAtPath:DirPath toPath:tragPath error:nil];
        
        //删除文件
        isOK = [fm removeItemAtPath:filePath error:nil];
        
        
    }
    return 0;
}
