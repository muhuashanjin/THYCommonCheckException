//
//  CTViewControllerIntercepter.m
//  Interceptor
//
//  Created by casa on 4/17/15.
//  Copyright (c) 2015 alibaba. All rights reserved.
//

#import "CTViewControllerIntercepter.h"
#import <UIKit/UIKit.h>

@implementation CTViewControllerIntercepter

+ (void)load
{
    [super load];
    [CTViewControllerIntercepter sharedInstance];
    
}

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken;
    static CTViewControllerIntercepter *sharedInstance;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[CTViewControllerIntercepter alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [ViewController aspect_hookSelector:@selector(viewDidAppear:) withOptions:AspectPositionAfter usingBlock:^(id<AspectInfo> aspectInfo, BOOL animated){
            [self thy_viewDidAppear:animated];
        } error:NULL];
     
    }
    return self;
}

#pragma mark - fake methods
- (void)thy_viewDidAppear:(BOOL)animated
{
    NSLog(@"Swizzling_Did call");
}

@end
