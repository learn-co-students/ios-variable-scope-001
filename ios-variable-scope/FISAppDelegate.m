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
    NSMutableArray *copy = [array mutableCopy];
    [copy addObject:string];
    return copy;
    
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger count = 0;
    for (NSUInteger i = 0; i < [array count]; i++){
        NSString *myString = array[i];
        NSString *capitalized = [myString uppercaseString];
        if ([myString isEqualToString:capitalized]){
            count++;
        }
    }
    return count;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
    [array removeAllObjects];
}

@end
