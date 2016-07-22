//
//  NSMutableArray+THYCheckNSMutableArray.m
//  EKESell
//
//  Created by thy on 16/7/13.
//
//

#import "NSMutableArray+THYCheckNSMutableArray.h"



@implementation NSMutableArray (THYCheckNSMutableArray)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Method fromObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(objectAtIndex:));
        Method toObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(thyNSMutableArray_objectAtIndex:));
        method_exchangeImplementations(fromObjectAtIndexMethod,toObjectAtIndexMethod);
        
        
        Method fromInsertObjectMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(insertObject:atIndex:));
        Method toInsertObjectMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(thyNSMutableArray_insertObject:atIndex:));
        method_exchangeImplementations(fromInsertObjectMethod,toInsertObjectMethod);

        Method fromRemoveObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(removeObjectAtIndex:));
        Method toRemoveObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(thyNSMutableArray_removeObjectAtIndex:));
        method_exchangeImplementations(fromRemoveObjectAtIndexMethod,toRemoveObjectAtIndexMethod);

        Method fromReplaceObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(replaceObjectAtIndex:withObject:));
        Method toReplaceObjectAtIndexMethod = class_getInstanceMethod(objc_getClass("__NSArrayM"),@selector(thyNSMutableArray_replaceObjectAtIndex:withObject:));
        method_exchangeImplementations(fromReplaceObjectAtIndexMethod,toReplaceObjectAtIndexMethod);

    });
}

- (id)thyNSMutableArray_objectAtIndex:(NSUInteger)index {
    if (self.count-1 < index) {
        @try {
            return [self thyNSMutableArray_objectAtIndex:index];
        }
        @catch (NSException *exception) {
            log_exception();
            return nil;
        }
        @finally {}
    } else {
        
        id value = [self thyNSMutableArray_objectAtIndex:index];
        if (value == [NSNull null]) {
            log_null();
            return nil;
        }
        
        return value;
    }
}

- (void)thyNSMutableArray_insertObject:(id)object atIndex:(NSUInteger)idx {
        @try {
            [self thyNSMutableArray_insertObject:object atIndex:idx];
        }
        @catch (NSException *exception) {
            log_exception();
        }
        @finally {}
}

- (void)thyNSMutableArray_removeObjectAtIndex:(NSUInteger)index {
    @try {
        [self thyNSMutableArray_removeObjectAtIndex:index];
    }
    @catch (NSException *exception) {
        log_exception();
    }
    @finally {}
}

- (void)thyNSMutableArray_replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject {
    @try {
        [self thyNSMutableArray_replaceObjectAtIndex:index withObject:anObject];
    }
    @catch (NSException *exception) {
        log_exception();
    }
    @finally {}
}


@end
