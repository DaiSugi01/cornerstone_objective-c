//
//  PaymentGateway.m
//  Lab10(Payments)
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger)amount
{
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry we can't process your payment right now");
    }
}

@end
