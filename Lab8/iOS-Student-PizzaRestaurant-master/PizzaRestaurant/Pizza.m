//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by 杉原大貴 on 2021/03/01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize:(enum PizzaSize) size AndToppings: (NSArray *)initialToppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = [NSArray arrayWithArray:initialToppings];
    }
    return self;
}

- (NSString *)getSize:(NSInteger)size
{
    switch (size) {
        case Small:
            return @"small";
        case Midium:
            return @"midium";
        case Large:
            return @"large";
        default:
            return @"none";
    }
}
@end
