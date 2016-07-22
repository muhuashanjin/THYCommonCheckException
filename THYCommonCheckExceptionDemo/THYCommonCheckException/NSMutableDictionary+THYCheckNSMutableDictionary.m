//
//  NSMutableDictionary+THYCheckNSMutableDictionary.m
//  EKESell
//
//  Created by thy on 16/7/13.
//
//

#import "NSMutableDictionary+THYCheckNSMutableDictionary.h"

@implementation NSMutableDictionary (THYCheckNSMutableDictionary)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Method fromMethod = class_getClassMethod(objc_getClass("__NSDictionaryM"),@selector(dictionaryWithObject:forKey:));
        Method toMethod = class_getClassMethod(objc_getClass("__NSDictionaryM"),@selector(thyNSMutableDictionary_dictionaryWithObject:forKey:));
        method_exchangeImplementations(fromMethod,toMethod);
        
    });
}

+ (id)thyNSMutableDictionary_dictionaryWithObject:(NSString *)value forKey:(NSString *)key {
    
    @try {
        return [self thyNSMutableDictionary_dictionaryWithObject:value forKey:key];
    }
    @catch (NSException *exception) {
        log_exception();
        return nil;
    }
    @finally {}
    
}

@end
