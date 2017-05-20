/*
 Category： 叫分类或类的扩展，可以在不修改原类的基础上为原类添加新的方法，
            是ＯＣ的独有方法
 
 作用：    可以用于扩展类，增加功能
          可以用于一个庞大的程序进行分模块开发
          可以多人同时编写
          当一个类里面有非常多的方法时，可以通过扩展把这个大类分成若干个小类
 
 用法：1、先有要有一主类,new file --> cocoa Torch --> 类（person）
      2、创建一个主类的扩展（category）,
            new file --> Objective-C file --> file : run
                                          --> file type : Category
                                          --> class : person 重要〜给谁增加的
      和原类的差别 ---> person.h      --> @interface person : NSObject
                                        @end
                 ---> person.m      --> @implementation person
                                        @end
                 ---> person+run.h  --> @interface person (run)
                                        @end
                 ---> person+run.m  --> @implementation person (run)
                                        @end
 
       3、通过扩展实现为person添加方法，
            声明见person+run.h 
            实现见person+run.m
 
       4､使用Category中为主类新增的方法（调用）见main.m
            引用主类
            引入扩展类
 
       5、注意事项
            只能声明和实现方法，不能声明实例变量，类似静态方法
                不能用@property
 
            有同名方法时调用最新的
 
            可以访问主类中的例实变量，
                见person+playGame.h 
                中的-(void)fangWenZhuLeiBianliang;方法
 
        6、非正式协议 就是给NSObject或其子类增加的方法
            NSObject+add.h
            NSString+count.h
 */



#import <Foundation/Foundation.h>

//引用主类
#import "person.h"

//引入扩展类
#import "person+run.h"
#import "person+playGame.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    //new一个对象
        person *p = [person new];
        //person+run.h里的方法
        [p pao];
        [p kuaiPao];
        
        //person+playGame.h里的方法
        [p playlol];
        
        //调用主类中的变量
        p.age = 99;
        NSLog(@"age = %d",p.age);
        
        //通过扩展方法调用主类中的变量
        [p fangWenZhuLeiBianliang];
        
        
    }
    return 0;
}
