//
//  main.m
//  ARC
//
//  Created by 张智 on 17/3/25.
//  Copyright © 2017年 BT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Preson.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {
    
    {
        Preson* man = [Preson new];
        Dog *byd = [Dog new];
        man.dog = byd;
        byd.master = man;
    }
    
    return 0;
}
