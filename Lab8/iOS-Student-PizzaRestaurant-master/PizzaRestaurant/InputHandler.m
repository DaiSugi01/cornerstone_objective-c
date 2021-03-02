//
//  InputHandler.m
//  PizzaRestaurant
//
//  Created by 杉原大貴 on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)getUserInput {
    char inputChar[255];
    char *result = fgets(inputChar, 255, stdin);
    
    if (result == NULL ) {
        return NULL;
    }
    
    NSString *userInput = [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return userInput;
}

@end
