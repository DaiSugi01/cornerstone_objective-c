//
//  main.m
//  Working
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import <Foundation/Foundation.h>
#import "DateCalculator.h"
 

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        DateCalculator *dc = [[DateCalculator alloc] initWithName:@"Daiki" AndAge:27];
        if ([dc canDateAPersonWithAge:20]) {
            NSLog(@"YES");
        } else {
            NSLog(@"NO");
        }
    }
    return 0;
}
