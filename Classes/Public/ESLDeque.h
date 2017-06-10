//
//  FUCDeque.h
//  Pods
//
//  Created by Xu Peng on 2017/3/31.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ESLDeque : NSObject

/**
    Data Visit
 **/
- (instancetype)at:(NSInteger)index;
- (instancetype)front;
- (instancetype)end;

/**
    Add Data
 **/
- (void)push_back:(id)object;
- (void)push_front:(id)object;
- (void)insert:(id)object atPosition:(NSInteger)position;

/**
    Delete Data
 **/
- (instancetype)pop_back;
- (instancetype)pop_front;
- (instancetype)erase:(NSInteger)position;

/**
    other operation
 **/
- (BOOL)empty;
- (NSInteger)size;
- (void)clean;

@end

NS_ASSUME_NONNULL_END
