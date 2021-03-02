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
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            NSString *inputString = [InputHandler getUserInput];
                        
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            if ([commandWords count] == 0) {
                NSLog(@"Invalid input");
                continue;
            }
            
            NSString *size = commandWords.firstObject;
            NSArray<NSString *> *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] -1)];
            
            enum PizzaSize pizzaSize;
            
            if ([[size lowercaseString] isEqualTo:@"small"]) {
                pizzaSize = small;
            } else if ([[size lowercaseString] isEqualTo:@"midium"]) {
                pizzaSize = midium;
            } else if ([[size lowercaseString] isEqualTo:@"large"]) {
                pizzaSize = large;
            } else {
                NSLog(@"Invalid size");
                continue;
            }
            
            // And then send some message to the kitchen...
            Pizza *pizza =[restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            NSLog(@"Your order is %@ size pizza with %@", [pizza getSize], [[pizza toppings] componentsJoinedByString:@", "]);

        }

    }
    return 0;
}

