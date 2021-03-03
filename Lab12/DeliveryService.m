//
//  DeliveryService.m
//  Lab12
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import "DeliveryService.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _deriveredPizzas = [NSMutableArray array];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza
{
    [self.deliveryCar deliverPizza:pizza];
    [self.deriveredPizzas addObject:pizza];
}

- (NSMutableArray *)getDeliveredPizzaInfo
{
    return self.deriveredPizzas;
}
@end
