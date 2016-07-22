//
//  ViewController.m
//  THYCommonCheckExceptionDemo
//
//  Created by thy on 16/7/19.
//  Copyright © 2016年 thy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    
    NSLog(@"origin_Will call");
}       

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"origin_Did call");
}

- (void)objectAtIndex {
 
    NSArray *arr1 = @[@1,@2];
    [arr1 objectAtIndex:2];
    NSNumber *number = arr1[2];
    
    NSArray *arr2 = @[@1,@2];
    NSMutableArray *muarr = [NSMutableArray arrayWithArray:arr2];
    [muarr objectAtIndex:2];
    number = muarr[2];
}

- (void)insertObject {
    
    NSString *str = nil;
    NSMutableArray *muarr = [NSMutableArray arrayWithObjects:@1, nil];
    [muarr insertObject:@2 atIndex:1];
    [muarr insertObject:str atIndex:1];
    [muarr insertObject:@2 atIndex:3];
    [muarr insertObject:str atIndex:4];

}

- (void)removeObjectAtIndex {
    NSMutableArray *muarr = [NSMutableArray arrayWithObjects:@1, nil];
    [muarr removeObjectAtIndex:1];
}

- (void)replaceObjectAtIndex {
   
    NSString *str = nil;
    NSMutableArray *muarr = [NSMutableArray arrayWithObjects:@1, nil];
    [muarr replaceObjectAtIndex:1 withObject:@2];
    [muarr replaceObjectAtIndex:0 withObject:str];
    [muarr replaceObjectAtIndex:1 withObject:str];
}

- (void)dictionaryWithObject {
 
    NSString *str = nil;
    NSDictionary *dic = [NSDictionary dictionaryWithObject:@1 forKey:str];
    dic = [NSDictionary dictionaryWithObject:str forKey:@3];
    dic = [NSDictionary dictionaryWithObject:@3 forKey:str];
    dic = [NSDictionary dictionaryWithObject:str forKey:str];
    
    dic = [NSMutableDictionary dictionaryWithObject:nil forKey:@1];
    dic = [NSMutableDictionary dictionaryWithObject:@1 forKey:nil];
    dic = [NSMutableDictionary dictionaryWithObject:nil forKey:nil];


}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *objectAtIndex = [[UIButton alloc] initWithFrame:CGRectMake(100,64,200,40)];
    objectAtIndex.backgroundColor = [UIColor lightGrayColor];
    [objectAtIndex setTitle:@"objectAtIndex" forState:UIControlStateNormal];
    [objectAtIndex setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [objectAtIndex addTarget:self action:@selector(objectAtIndex) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:objectAtIndex];

    UIButton *objectAtIndex1 = [[UIButton alloc] initWithFrame:CGRectMake(100,CGRectGetMaxY(objectAtIndex.frame)+10,200,40)];
    objectAtIndex1.backgroundColor = [UIColor lightGrayColor];
    [objectAtIndex1 setTitle:@"insertObject" forState:UIControlStateNormal];
    [objectAtIndex1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [objectAtIndex1 addTarget:self action:@selector(insertObject) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:objectAtIndex1];

    UIButton *objectAtIndex2 = [[UIButton alloc] initWithFrame:CGRectMake(100,CGRectGetMaxY(objectAtIndex1.frame)+10,200,40)];
    objectAtIndex2.backgroundColor = [UIColor lightGrayColor];
    [objectAtIndex2 setTitle:@"removeObjectAtIndex" forState:UIControlStateNormal];
    [objectAtIndex2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [objectAtIndex2 addTarget:self action:@selector(removeObjectAtIndex) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:objectAtIndex2];

    UIButton *objectAtIndex3 = [[UIButton alloc] initWithFrame:CGRectMake(100,CGRectGetMaxY(objectAtIndex2.frame)+10,200,40)];
    objectAtIndex3.backgroundColor = [UIColor lightGrayColor];
    [objectAtIndex3 setTitle:@"replaceObjectAtIndex" forState:UIControlStateNormal];
    [objectAtIndex3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [objectAtIndex3 addTarget:self action:@selector(replaceObjectAtIndex) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:objectAtIndex3];

    UIButton *objectAtIndex4 = [[UIButton alloc] initWithFrame:CGRectMake(100,CGRectGetMaxY(objectAtIndex3.frame)+10,200,40)];
    objectAtIndex4.backgroundColor = [UIColor lightGrayColor];
    [objectAtIndex4 setTitle:@"dictionaryWithObject" forState:UIControlStateNormal];
    [objectAtIndex4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [objectAtIndex4 addTarget:self action:@selector(dictionaryWithObject) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:objectAtIndex4];

//    UIButton *objectAtIndex5 = [[UIButton alloc] initWithFrame:CGRectMake(100,CGRectGetMaxY(objectAtIndex3.frame)+10,200,40)];
//    objectAtIndex5.backgroundColor = [UIColor lightGrayColor];
//    [objectAtIndex5 setTitle:@"dictionaryWithObject" forState:UIControlStateNormal];
//    [objectAtIndex5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [objectAtIndex5 addTarget:self action:@selector(dictionaryWithObject) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:objectAtIndex5];

}

- (void)objectAtIndexAction {
    


}

@end
