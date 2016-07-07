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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *modArray = [array mutableCopy];
    [modArray addObject:string];
    return modArray;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger uppercaseCount = 0;
    NSCharacterSet *lowerCaseSet = [NSCharacterSet lowercaseLetterCharacterSet];
    for (NSUInteger i = 0; i < [array count]; i++) {
        if ([array[i] rangeOfCharacterFromSet:lowerCaseSet].location == NSNotFound)
            {
                uppercaseCount = uppercaseCount + 1;
            }
    }
    return uppercaseCount;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    for (NSUInteger i = 0; i < 2; i++) {
        [array removeAllObjects];
    }
}


@end
