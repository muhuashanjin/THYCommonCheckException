//
//  THY_CheckHeader.h
//  THYCommonCheckExceptionDemo
//
//  Created by thy on 16/7/22.
//  Copyright © 2016年 thy. All rights reserved.
//

#ifndef THY_CheckHeader_h
#define THY_CheckHeader_h


#endif /* THY_CheckHeader_h */


#define log_exception() \
NSLog(@"---------- %s Crash Because Method %s  ----------\n", class_getName(self.class), __func__);\
NSLog(@"reason:%@", [exception reason]);\
NSLog(@"callStackSymbols:%@", [exception callStackSymbols]);

#define log_null() \
NSLog(@"---------- %s value = [NSNull null] Because Method %s  ----------\n", class_getName(self.class), __func__);


