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
    NSArray *stock = @[ @"Swizzle Soda",
                        @"Mr. Fizz",
                        @"Buzz Doctor",
                        @"De Bug Beer",
                        @"MACHINE",
                        @"Liquid Ice"     ];
    NSUInteger theCount = [self countOfUppercaseStringsInArray:stock];
    NSLog(@"%lu",theCount);
    
    return YES;
}

- (NSMutableArray *)arrayByAddingString:(NSString *)string toArray:(NSMutableArray *)array {
    NSMutableArray *newMutableArray = [[NSMutableArray alloc] init];
    newMutableArray = [array mutableCopy];
    [newMutableArray addObject:string];
    return newMutableArray;
}


-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array {
    NSUInteger upperCount = 0;
    
    for (NSUInteger i=0; i < [array count]; i++) {
        NSString *arrayObject = array[i];
        NSString *upperObject = [arrayObject uppercaseString];
        if ([arrayObject isEqualToString:upperObject]) {
            upperCount ++;
            
        }
        
    }
    
    return upperCount;
}

- (void)removeAllObjectsFromArray:(NSMutableArray *)array {
    
    [array removeAllObjects];
    
    for (NSUInteger i=0; i < [array count]; i++) {
        
    }

}

@end
