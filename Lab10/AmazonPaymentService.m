//
//  AmazonPaymentService.m
//  Lab10(Payments)
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger)amount
{
    NSLog(@"Amazon processed amount $%ld", (long)amount);
}

- (BOOL) canProcessPayment
{
    BOOL canProcess = arc4random_uniform(2);
    return canProcess;
}

@end
