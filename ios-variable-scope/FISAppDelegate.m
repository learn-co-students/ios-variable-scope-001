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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array{
    NSMutableArray *mutableCopyArray=[array mutableCopy];
    [mutableCopyArray addObject:string];
    return  mutableCopyArray;
    
}


-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    
    NSUInteger count=0;
    for (NSUInteger i=0; i<[array count]; i++) {
        NSCharacterSet *lowerCaseSet = [NSCharacterSet lowercaseLetterCharacterSet];
        
        if ([[array objectAtIndex:i] rangeOfCharacterFromSet:lowerCaseSet].location == NSNotFound){
            count++;
        }
    }
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    
    [array removeAllObjects];
}

@end
