//
//  NSDictionary+THYCheckNSDictionary.m
//  EKESell
//
//  Created by thy on 16/7/13.
//
//

#import "NSDictionary+THYCheckNSDictionary.h"

@implementation NSDictionary (THYCheckNSDictionary)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Method fromDictionaryWithObjectMethod = class_getClassMethod(objc_getClass("__NSDictionaryI"),@selector(dictionaryWithObject:forKey:));
        Method toDictionaryWithObjectMethod = class_getClassMethod(objc_getClass("__NSDictionaryI"),@selector(thyNSDictionary_dictionaryWithObject:forKey:));
        method_exchangeImplementations(fromDictionaryWithObjectMethod,toDictionaryWithObjectMethod);

    });
}

+ (instancetype)thyNSDictionary_dictionaryWithObject:(NSString *)value forKey:(NSString *)key {
    
    @try {
        return [self thyNSDictionary_dictionaryWithObject:value forKey:key];
    }
    @catch (NSException *exception) {
        log_exception();
        return nil;
    }
    @finally {}
    
}


@end
