//
//  ApplePaymentService.m
//  Lab10(Payments)
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void)processPaymentAmount:(NSInteger)amount
{
    NSLog(@"Apple processed amount $%ld", (long)amount);
}

- (BOOL) canProcessPayment
{
    BOOL canProcess = arc4random_uniform(2);
    return canProcess;
}

@end
