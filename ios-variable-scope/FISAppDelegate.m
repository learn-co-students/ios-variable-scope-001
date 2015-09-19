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

-(NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    
    NSMutableArray *arrayCopy = [array mutableCopy];
    NSString *addNew = string;
    [arrayCopy addObject:addNew];
    
        
    return arrayCopy;
    
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    
    NSCharacterSet *lowerCaseSet = [NSCharacterSet lowercaseLetterCharacterSet];
    NSUInteger uppercaseCount = 0;
    for (NSUInteger i = 0; i < array.count; i++) {
        NSString *arrayObject = [array objectAtIndex:i];
        if ([arrayObject rangeOfCharacterFromSet:lowerCaseSet].location == NSNotFound) {
            uppercaseCount = uppercaseCount + 1;
        }
    }
    
    return uppercaseCount;
    
}
-(void)removeAllObjectsFromArray:(NSMutableArray *)array {

    [array removeAllObjects];
    
}

     



@end
