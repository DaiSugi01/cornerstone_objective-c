//
//  PickeyManager.m
//  Lab11
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "PickeyManager.h"

@implementation PickeyManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(enum PizzaSize)size andToppings:(NSArray *)toppings
{
    return [toppings containsObject:@"anchovies"] ? NO : YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    [self.deliveryService deliverPizza:pizza];
}

@end
