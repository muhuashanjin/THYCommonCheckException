//
//  NSArray+THYCheckNSArray.m
//  EKESell
//
//  Created by thy on 16/7/13.
//
//

#import "NSArray+THYCheckNSArray.h"

@implementation NSArray (THYCheckNSArray)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Method fromObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayI"),@selector(objectAtIndex:));
        Method toObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayI"),@selector(thyNSArray_objectAtIndex:));
        method_exchangeImplementations(fromObjectAtIndexMethod,toObjectAtIndexMethod);
     
    });
}

- (instancetype)thyNSArray_objectAtIndex:(NSUInteger)index {
    if (self.count-1 < index) {
        @try {
            return [self thyNSArray_objectAtIndex:index];
        }
        @catch (NSException *exception) {
            log_exception();
            return nil;
        }
        @finally {}
    } else {
        
        id value = [self thyNSArray_objectAtIndex:index];
        if (value == [NSNull null]) {
            log_null();
            return nil;
        }
        
        return value;
    }
}

@end
