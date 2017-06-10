//
//  FUCDeque.m
//  Pods
//
//  Created by Xu Peng on 2017/3/31.
//
//

#import "ESLDeque.h"

NS_ASSUME_NONNULL_BEGIN

@interface ESLDeque ()

@property (nonatomic, strong) NSMutableArray *mutableArray;

@end


@implementation ESLDeque

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
- (instancetype)at:(NSInteger)index
{
    if (index < [self.mutableArray count]) {
        return self.mutableArray[index];
    }
    return nil;
}

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
- (void)push_back:(id)object
{
    if (object) {
        @synchronized (self) {
            [self.mutableArray addObject:object];
        }
    } else {
        NSAssert(NO, @"object can not be nil");
    }
}

- (void)push_front:(id)object
{
    if (object) {
        @synchronized (self) {
            [self.mutableArray insertObject:object atIndex:0];
        }
    } else {
        NSAssert(NO, @"object can not be nil");
    }
}

- (void)insert:(id)object atPosition:(NSInteger)position
{
    if (position <= [self.mutableArray count] && position >= 0) {
        if (object) {
            @synchronized (self) {
                [self.mutableArray insertObject:object atIndex:position];
            }
        } else {
            NSAssert(NO, @"object can not be nil");
        }
    } else {
        NSAssert(NO, @"postion out of bounds");
    }
}

/**
 Delete Data
 **/
- (instancetype)pop_back
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

- (instancetype)pop_front
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

- (instancetype)erase:(NSInteger)position
{
    if (position < [self.mutableArray count]) {
        @synchronized (self) {
            id object = self.mutableArray[position];
            [self.mutableArray removeObjectAtIndex:0];
            return object;
        }
    } else {
        NSAssert(NO, @"postion out of bounds");
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
