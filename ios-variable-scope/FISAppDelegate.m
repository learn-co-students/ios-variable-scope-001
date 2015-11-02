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
}

// Given an array return the number of uppercase strings
-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    

    //  Create an example array , when checked this array should return a NSUInteger of 4 capitlized strings
    // NSArray *newArray = @[@"ONE", @"TWO",@"THREE",@"FOUR"]; // should return 4

    
    //Create a counter which will increment if string is capitilized
    NSUInteger counter = 0;
    
    // Iterate over each item in the array
    for (NSUInteger i = 0; i < [array count]; i++) {
        
        // Inside the loop create an uppercase string from the original string
        NSString *copiedString = [array[i] uppercaseString];
        
        // Once I have an item I want to check if it's uppercase
        // Compare the strings and if the result is True increment counter
        if ([copiedString isEqualToString:array[i]]) {
            // If uppercase add to the counter
            counter++;
        }
    }
    NSLog(@"%lu",(unsigned long)counter);
    // return the counter
    return counter;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    
    [array removeAllObjects];
}

@end
