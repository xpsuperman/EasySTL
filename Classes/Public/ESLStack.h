//
//  ESLStack.h
//  Pods
//
//  Created by Xu Peng on 2017/6/9.
//
//

#import <Foundation/Foundation.h>

@interface ESLStack : NSObject

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
