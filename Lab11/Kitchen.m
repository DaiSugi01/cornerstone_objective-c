//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(enum PizzaSize)size toppings:(NSArray *)toppings
{
    if (!_delegate) {
        return [[Pizza alloc] initWithSize:size AndToppings:toppings];
    }
    
    // if this returns NO, don't make the pizza at all.
    if (![_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        return nil;
    }
    
    Pizza *pizza;
    // then make a large pizza, no matter what was actually ordered.
    if ([_delegate kitchenShouldUpgradeOrder:self]) {
        pizza = [[Pizza alloc] initWithSize:Large AndToppings:toppings];
    } else {
        pizza = [[Pizza alloc] initWithSize:Large AndToppings:toppings];
    }
    
    if ([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [_delegate kitchenDidMakePizza:pizza];
    }
    
    return pizza;
}

@end
