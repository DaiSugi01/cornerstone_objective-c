//
//  DeliveryService.h
//  Lab12
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

@property (nonatomic) NSMutableArray *deriveredPizzas;
@property (nonatomic) DeliveryCar *deliveryCar;

- (void)deliverPizza:(Pizza *)pizza;
- (NSMutableArray *)getDeliveredPizzaInfo;

@end

NS_ASSUME_NONNULL_END
