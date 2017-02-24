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
    
    NSMutableArray *copy = [[NSMutableArray alloc] init];
    
    
    copy = [array mutableCopy];
    
    [copy addObject:string];
    return copy;
}

-(NSUInteger)countOfUppercaseStringsInArray:(NSArray *)array{
    NSUInteger cnt = 0;
    NSUInteger arrayCnt;
    NSString * val1 = [[NSString alloc] init];
    NSString * val2 = [[NSString alloc] init];
    
    arrayCnt = [array count];
    for(NSUInteger i = 0; i < arrayCnt; i++){
        
        val1 = [array[i] uppercaseString];
        val2 = array[i];
        NSLog(@"%@",val1);
        NSLog(@"%@",val2);
              
        if([val1 isEqualToString:val2]){
            cnt++;
        }
    }
    
    return cnt;
}

-(void)removeAllObjectsFromArray:(NSMutableArray *)array{
        [array removeAllObjects];
}



@end
