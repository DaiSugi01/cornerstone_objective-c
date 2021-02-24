//
//  main.m
//  Lab2
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box = [[Box alloc] initWithHeight:11 AndWidth:11 AndLength:11];
        NSLog(@"The volume is %.2f", [box calcVolume]);
        
        Box *anotherBox = [[Box alloc] initWithHeight:5 AndWidth:5 AndLength:5];
        int possibleQuantity = [box possibleIncludeBox:anotherBox];
        NSLog(@"The box fit %d time%s", [box possibleIncludeBox:anotherBox], (possibleQuantity > 1) ? "s" : "");
    }
    return 0;
}
