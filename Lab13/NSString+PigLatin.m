//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by 杉原大貴 on 2021/02/25.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {

    NSMutableString *result = [NSMutableString string];
    
    for (NSString *word in [self componentsSeparatedByString:@" "]) {
        [result appendString:[[self componentsSeparatedByString:@" "] count] == 1 ? [NSString stringWithFormat:@"%@ay", self] : [@[@"a", @"e", @"i", @"o", @"u"] containsObject:[[word substringToIndex:1] lowercaseString]] ? [NSString stringWithFormat:@"%@%@ay ", [[word substringToIndex:1] uppercaseString], [[word substringFromIndex:1] lowercaseString]] : [@[@"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl"] containsObject:[[word substringToIndex:2] lowercaseString]] ? [NSString stringWithFormat:@"%@%@%@ay ", [[NSString stringWithFormat:@"%C", [word characterAtIndex:2]] uppercaseString], [word substringFromIndex:3], [[word substringToIndex:2] lowercaseString]] : [NSString stringWithFormat:@"%@%@%@ay ", [[NSString stringWithFormat:@"%C", [word characterAtIndex:1]] uppercaseString], [word substringFromIndex:2], [[word substringToIndex:1] lowercaseString]]];
    }
    
    return result;
}

@end
