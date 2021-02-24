//
//  Box.m
//  Lab2
//
//  Created by 杉原大貴 on 2021/02/23.
//

#import "Box.h"

@implementation Box {
    float _height;
    float _width;
    float _length;
}

- (instancetype) initWithHeight: (float) height AndWidth: (float) width AndLength: (float) length
{
    self = [super init];
    if (self) {
        _height = height;
        _width = width;
        _length = length;
    }
    return self;
}

- (float) calcVolume
{
    return self.height * self.width * self.length;
}

- (int) possibleIncludeBox: (Box *) box
{
    int biggerBoxVolume = [self calcVolume] > [box calcVolume] ? (int)[self calcVolume] : (int)[box calcVolume];
    int smallerBoxVolume = [self calcVolume] > [box calcVolume] ? (int)[box calcVolume] : (int)[self calcVolume];
    
    int possibleQuantity = biggerBoxVolume / smallerBoxVolume;
    return possibleQuantity;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Box=[height=%.1f, width=%.1f, length=%.1f", self.height, self.width, self.length];
}

@end
