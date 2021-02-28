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
    [[self componentsSeparatedByString:@" "] enumerateObjectsUsingBlock:^(id word, NSUInteger idx, BOOL *stop) {
        [result appendString:[@[@"a", @"e", @"i", @"o", @"u", @"A", @"E", @"I", @"O", @"U"] containsObject:[word substringToIndex:1]] ? [NSString stringWithFormat:@"%@%@ay ", [[word substringToIndex:1] uppercaseString], [word substringFromIndex:1]] : [@[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl", @"ch", @"sh", @"sm", @"st", @"th", @"ps", @"ph", @"pl", @"gl", @"CH", @"SH", @"SM", @"ST", @"TH", @"PS", @"PH", @"PL", @"GL", @"cH", @"sH", @"sM", @"sT", @"tH", @"pS", @"pH", @"pL", @"gL"] containsObject:[word substringToIndex:2]] ? [NSString stringWithFormat:@"%@%@%@ay ", [[NSString stringWithFormat:@"%C", [word characterAtIndex:2]] uppercaseString], [word substringFromIndex:3], [[word substringToIndex:2] lowercaseString]] : [NSString stringWithFormat:@"%@%@%@ay ", [[NSString stringWithFormat:@"%C", [word characterAtIndex:1]] uppercaseString], [word substringFromIndex:2], [[word substringToIndex:1] lowercaseString]]];
    }];
    return [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
