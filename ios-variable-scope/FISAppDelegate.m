//
//  FISAppDelegate.m
//  ios-variable-scope
//
//  Created by iOS Staff on 5/12/15
//  Copyright (c) 2015 The Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end


@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    // makes a mutable copy of the given array
    NSMutableArray *copyArray = [array mutableCopy];
    [copyArray addObject:string];
    return copyArray;
}

- (NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger counter = 0;
    
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *word = array[i];
        
        if ([word isEqualToString:[word uppercaseString]]) {
            counter++;
        }
    }
    return counter;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}
/*
 
 * Write your method definitions here.
 
 */

@end
