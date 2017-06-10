//
//  ESLStack.m
//  Pods
//
//  Created by Xu Peng on 2017/6/9.
//
//

#import "ESLStack.h"


@interface ESLStack ()

@property (nonatomic, strong) NSMutableArray *mutableArray;

@end


@implementation ESLStack

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutableArray = [[NSMutableArray alloc] init];
    }
    return self;
}

/**
 Add Data
 **/
- (void)push:(id)object
{
    if (object) {
        @synchronized (self) {
            [self.mutableArray addObject:object];
        }
    } else {
        NSAssert(NO, @"object can not be nil");
    }
}

/**
 Delete Data
 **/
- (instancetype)pop
{
    if (![self empty]) {
        @synchronized (self) {
            id object = self.mutableArray.lastObject;
            [self.mutableArray removeLastObject];
            return object;
        }
    }
    return nil;
}

/**
 other operation
 **/
- (BOOL)empty
{
    return [self.mutableArray count] == 0;
}

- (NSInteger)size
{
    return [self.mutableArray count];
}

- (void)clean
{
    @synchronized (self) {
        [self.mutableArray removeAllObjects];
    }
}

@end
