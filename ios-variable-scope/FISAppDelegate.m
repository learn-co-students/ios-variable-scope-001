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

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *arrayCopy = [array mutableCopy];
    NSString *addNew = string;
    [arrayCopy addObject:addNew];
    
        
    return arrayCopy;
    
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSArray *stringArray = array;
    NSUInteger *uppercaseCount;
    for (NSUInteger i = 0; i < [stringArray count]; i++) {
        BOOL isUppercase = [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:[stringArray characterAtIndex:[i]]];
        if (isUppercase == YES) {
            
            
        }
    }
    
    
    return nil;
}



@end
