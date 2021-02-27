//
//  main.m
//  Lab13
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"Kale Chips afew";
        NSLog(@"%@", [str stringByPigLatinization]);
    }
    return 0;
}
