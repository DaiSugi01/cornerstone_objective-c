//
//  AmazonPaymentService.h
//  Lab10(Payments)
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject <PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
