//
//  StripePaymentService.m
//  Lab10(Payments)
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)amount
{
    NSLog(@"Stripe processed amount $%ld", (long)amount);
}

- (BOOL) canProcessPayment
{
    BOOL canProcess = arc4random_uniform(2);
    return canProcess;
}

@end
