//
//  DeliveryCar.m
//  Lab12
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "DeliveryCar.h"

@implementation DeliveryCar

-(void)deliverPizza:(Pizza *)pizza
{
    NSLog(@"Pizza with %@ is Delivered", [[pizza toppings] componentsJoinedByString:@", "]);
}

@end
