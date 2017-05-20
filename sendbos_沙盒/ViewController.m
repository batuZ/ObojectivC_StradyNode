//
//  ViewController.m
//  sendbos_沙盒
/*
 
    沙盒的构成
        Documents   持久化数据
        tmp         临时目录
        Library     库
            cache           缓存
            preferences     配置信息＼SQLite
 
 
 1、返回目标的绝对路径的方法
        NSSearchPathForDirectoriesInDomains(要查找的目录, 是否使用主目录, 是否要完成路径)
 
 2、   增加已有路径字符串内容
        NSString *newFilePaht = [filePath stringByAppendingPathComponent:@"preferences"];
 
 
 3、沙盒路径获取方法（家）
 
        NSString *dri1 = NSHomeDirectory();
 
        Documents
        NSArray *arr2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);

        tmp
        NSString *tmpPath = NSTemporaryDirectory();

        Library
        NSArray *libraryPath = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);

        cache
        NSArray *cachePaht = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);

        preferences
        NSString *preferencesPath = [libraryPath[1] stringByAppendingPathComponent:@"preferences"];
 

 */


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //  MAC 查找家目录
    NSString *macHomePaht = NSHomeDirectory();
    
    //  IOS 查找沙盒目录
    NSString *iosSendBoxPaht = NSHomeDirectory();
    
    //  Documents
    NSArray *documentsPaht = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    //  tmp
    NSString *tmpPath = NSTemporaryDirectory();
    
    //  Library
    NSArray *libraryPath = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
    //  cache
    NSArray *cachePaht = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    
    //preferences
    NSString *preferencesPath = [libraryPath[1] stringByAppendingPathComponent:@"preferences"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
