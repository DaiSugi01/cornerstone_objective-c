//
//  CheeryManager.m
//  Lab11
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "CheeryManager.h"

@implementation CheeryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(enum PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Thank you for your order!");
    [self.deliveryService deliverPizza:pizza];
}

@end
