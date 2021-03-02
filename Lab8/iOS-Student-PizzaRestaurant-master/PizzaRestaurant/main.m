//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "InputHandler.h"
#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        Kitchen *restaurantKitchen = [Kitchen new];
        InputHandler *ih = [InputHandler new];
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            NSString *inputString = [ih getUserInput];
                        
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *size = commandWords.firstObject;
            NSArray<NSString *> *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] -1)];
            NSInteger sizeIndex;
            
            if ([[size lowercaseString] isEqualTo:@"small"]) {
                sizeIndex = 0;
            } else if ([[size lowercaseString] isEqualTo:@"midium"]) {
                sizeIndex = 1;
            } else if ([[size lowercaseString] isEqualTo:@"large"]) {
                sizeIndex = 2;
            } else {
                sizeIndex = 3;
            }
            
            // And then send some message to the kitchen...
            Pizza *pizza =[restaurantKitchen makePizzaWithSize:sizeIndex toppings:toppings];
            
            NSLog(@"Your order is %@ size pizza with %@", [pizza getSize: sizeIndex], [[pizza toppings] componentsJoinedByString:@", "]);

        }

    }
    return 0;
}

