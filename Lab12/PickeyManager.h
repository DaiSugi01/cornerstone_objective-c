//
//  PickeyManager.h
//  Lab11
//
//  Created by 杉原大貴 on 2021/03/02.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface PickeyManager : NSObject <KitchenDelegate>

@property (nonatomic, weak)DeliveryService *deliveryService;

@end

NS_ASSUME_NONNULL_END
