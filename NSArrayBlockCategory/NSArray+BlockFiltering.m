//
//  NSArray+BlockFiltering.m
//  whatever
//
//  Created by Gabriele Petronella on 1/2/13.
//  Copyright (c) 2013 GG. All rights reserved.
//

#import "NSArray+BlockFiltering.h"

@implementation NSArray (BlockFiltering)

- (NSArray *)filteredArrayUsingBlock:(BOOL (^)(id obj, NSUInteger idx, BOOL *stop))predicate {
    NSIndexSet * filteredIndexes = [self indexesOfObjectsPassingTest:predicate];
    return [self objectsAtIndexes:filteredIndexes];
}

@end
