//
//  main.m
//  Lab10
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
                
        NSUInteger dollarValue = arc4random_uniform(900) + 100;
        
        NSString *welcomeMessage = [NSString stringWithFormat:@"\nThank you for shopping at Acme.com.\n"
                                    "Your total today is $%lu Please select your payment method:\n"
                                    "1: Paypal\n"
                                    "2: Stripe\n"
                                    "3: Amazon\n"
                                    "4: Apple", dollarValue];
        
        NSInteger selectedOption = [[InputHandler getUserInput:welcomeMessage] intValue];
        PaymentGateway *pg = [PaymentGateway new];

        PaypalPaymentService *paypalService;
        StripePaymentService *stripeService;
        AmazonPaymentService *amazonService;
        ApplePaymentService *appleService;

        PaymentType paymentType = (int)selectedOption - 1;
        switch (paymentType) {
            case Paypal:
                paypalService = [PaypalPaymentService new];
                [pg setPaymentDelegate:paypalService];
                break;
            case Stripe:
                stripeService = [StripePaymentService new];
                [pg setPaymentDelegate:stripeService];
                break;
            case Amazon:
                amazonService = [AmazonPaymentService new];
                [pg setPaymentDelegate:amazonService];
                break;
            case Apple:
                appleService = [ApplePaymentService new];
                [pg setPaymentDelegate:appleService];
                break;
            default:
                NSLog(@"Invalid option");
                break;
        }
        
        [pg processPaymentAmount:dollarValue];
    }
    return 0;
}
