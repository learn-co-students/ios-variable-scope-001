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
    NSMutableArray *newArray = [array mutableCopy];
    [newArray addObject:string];
    return newArray;
    
    
    
    
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger totalCount = 0;
    NSUInteger numElements = [array count];
    for (NSUInteger i = 0; i < numElements; i++) {
        NSString *element = array[i];
        NSString *uelement = [element uppercaseString];
        if ([element isEqualToString:uelement]) {
            totalCount += 1;
        }
        else {
            totalCount+= 0;
        }
    }
    
    
    return totalCount;
    
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array {
    [array removeAllObjects];
    
    
}


@end
