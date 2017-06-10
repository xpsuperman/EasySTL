//
//  ViewController.m
//  EasySTL
//
//  Created by Xu Peng on 2017/6/9.
//  Copyright © 2017年 imeituan. All rights reserved.
//

#import "ViewController.h"
#import <EasySTL/EasySTL.h>

NS_ASSUME_NONNULL_BEGIN

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self testDeque];
    [self testQueue];
    [self testStack];
}

- (void)testDeque
{
    ESLDeque *deque = [[ESLDeque alloc] init];
    [deque push_front:@"1"];
    [deque push_back:@"2"];
    [deque push_front:@"0"];
    NSLog(@"Deque:%@", [deque front]);
    [deque insert:@"3" atPosition:3];
    NSLog(@"Deque-at:%@", [deque at:3]);
    NSString *front = (NSString *)[deque pop_front];
    NSLog(@"Deque-front:%@", front);
    NSString *back = (NSString *)[deque pop_back];
    NSLog(@"Deque-back:%@", back);
}

- (void)testQueue
{
    ESLQueue *queue = [[ESLQueue alloc] init];
    [queue push:@"1"];
    [queue push:@"2"];
    [queue push:@"4"];
    [queue push:@"3"];
    NSString *pop = (NSString *)[queue pop];
    NSLog(@"Queue-pop:%@", pop);
    [queue push:@"5"];
    pop = (NSString *)[queue pop];
    NSLog(@"Queue-pop:%@", pop);
}

- (void)testStack
{
    ESLStack *stack = [[ESLStack alloc] init];
    [stack push:@"1"];
    [stack push:@"2"];
    [stack push:@"4"];
    [stack push:@"3"];
    NSString *pop = (NSString *)[stack pop];
    NSLog(@"Stack-pop:%@", pop);
    [stack push:@"5"];
    pop = (NSString *)[stack pop];
    NSLog(@"Stack-pop:%@", pop);
}

@end

NS_ASSUME_NONNULL_END
