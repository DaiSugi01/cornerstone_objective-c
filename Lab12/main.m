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
#import "CheeryManager.h"
#import "PickeyManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        Kitchen *restaurantKitchen = [Kitchen new];
        
        CheeryManager *cm;
        PickeyManager *pm;
        DeliveryService *ds = [DeliveryService new];
        [ds setDeliveryCar:[DeliveryCar new]];

        while (TRUE) {
            // Loop forever
            
            NSInteger pickedOption = [[InputHandler getUserInput: @"\n"
                                        "Which manager would you like?\n"
                                        "0: Order pizza with Cheery Manager\n"
                                        "1: Order pizza with Manager\n"
                                        "2: Order pizza with other\n"
                                        "3: display delivered pizza history\n"] intValue];
            
            switch (pickedOption) {
                case 0:
                    if (cm == nil) {
                        cm = [CheeryManager new];
                        [cm setDeliveryService:ds];
                    }
                    [restaurantKitchen setDelegate: cm];
                    break;
                case 1:
                    if (pm == nil) {
                        pm = [PickeyManager new];
                        [pm setDeliveryService:ds];
                    }
                    [restaurantKitchen setDelegate: pm];
                    break;
                case 2:
                    [restaurantKitchen setDelegate: nil];
                case 3:
                    if ([[ds getDeliveredPizzaInfo] count] == 0) {
                        NSLog(@"You diin't order yet.");
                        continue;
                    }
                    
                    NSLog(@"** Delivery history **");
                    for (Pizza *deliveredPizza in [ds getDeliveredPizzaInfo]) {
                        NSLog(@"Pizza with %@", [[deliveredPizza toppings] componentsJoinedByString:@", "]);
                    }
                    NSLog(@"***************");
                    continue;
                default:
                    NSLog(@"Invalid option");
                    continue;
            }

            NSString *inputString = [InputHandler getUserInput: @"> "];
                        
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
                pizzaSize = Small;
            } else if ([[size lowercaseString] isEqualTo:@"midium"]) {
                pizzaSize = Medium;
            } else if ([[size lowercaseString] isEqualTo:@"large"]) {
                pizzaSize = Large;
            } else {
                NSLog(@"Invalid size");
                continue;
            }
            
            // And then send some message to the kitchen...
            Pizza *pizza =[restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            if (pizza) {
                NSLog(@"Your order is %@ size pizza with %@", [pizza getSize], [[pizza toppings] componentsJoinedByString:@", "]);
            } else {
                NSLog(@"Sorry we can't make pizza you ordered.");
            }

        }

    }
    return 0;
}

