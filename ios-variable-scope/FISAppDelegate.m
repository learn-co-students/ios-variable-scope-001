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

/*
 
 * Write your method definitions here.

 */

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)originalArray {
    NSMutableArray *newArray = [NSMutableArray arrayWithArray:originalArray];
    [newArray addObject:string];
    return newArray;}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger count = 0;
    for (NSUInteger i = 0; i < [array count]; i++) {
        NSString *string = array[i];
        if ([string.uppercaseString isEqualToString:string])
            {count++;}
    }
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{

        [array removeAllObjects];
    
}
@end
