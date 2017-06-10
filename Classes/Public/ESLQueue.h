//
//  ESLQueue.h
//  Pods
//
//  Created by Xu Peng on 2017/6/9.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ESLQueue : NSObject

/**
 Data Visit
 **/
- (instancetype)front;
- (instancetype)end;

/**
 Add Data
 **/
- (void)push:(id)object;

/**
 Delete Data
 **/
- (instancetype)pop;

/**
 other operation
 **/
- (BOOL)empty;
- (NSInteger)size;
- (void)clean;

@end

NS_ASSUME_NONNULL_END
