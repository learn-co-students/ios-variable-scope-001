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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
   NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    return newArray;
};

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSMutableArray *uppercaseArray = [[NSMutableArray alloc]init];
    for (int i =0; i<[array count]; i++) {
        if ([array[i] isEqualToString:[array[i] uppercaseString]]) {
            [uppercaseArray addObject:array[i]];
        }
    }
    return [uppercaseArray count];
};

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
};


/*
 
 * Write your method definitions here.
 
 */

@end
