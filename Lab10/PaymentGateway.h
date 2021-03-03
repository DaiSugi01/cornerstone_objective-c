//
//  PaymentGateway.h
//  Lab10(Payments)
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount:(NSInteger)amount;
- (BOOL) canProcessPayment;

@end

@interface PaymentGateway : NSObject

typedef NS_ENUM(unsigned int, PaymentType) {
    Paypal,
    Stripe,
    Amazon,
    Apple
};

@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

- (void)processPaymentAmount:(NSInteger)amount;

@end

NS_ASSUME_NONNULL_END
