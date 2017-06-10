//
//  ESLQueue.m
//  Pods
//
//  Created by Xu Peng on 2017/6/9.
//
//

#import "ESLQueue.h"

NS_ASSUME_NONNULL_BEGIN

@interface ESLQueue ()

@property (nonatomic, strong) NSMutableArray *mutableArray;

@end


@implementation ESLQueue

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mutableArray = [[NSMutableArray alloc] init];
    }
    return self;
}

/**
 Data Visit
 **/
- (instancetype)front
{
    return [self.mutableArray firstObject];
}

- (instancetype)end
{
    return [self.mutableArray lastObject];
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
            id object = self.mutableArray[0];
            [self.mutableArray removeObjectAtIndex:0];
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

NS_ASSUME_NONNULL_END
