//
//  Box.h
//  Lab2
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

@property (assign) float height;
@property (assign) float width;
@property (assign) float length;

- (instancetype) initWithHeight: (float) height AndWidth: (float) width AndLength: (float) length;
- (float) calcVolume;
- (int) possibleIncludeBox: (Box *) box;

@end

NS_ASSUME_NONNULL_END
