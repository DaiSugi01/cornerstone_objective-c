//
//  InputHandler.m
//  Lab5
//
//  Created by 杉原大貴 on 2021/02/24.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

+ (NSString *) getUserINput: (NSString *)prompt {
    
    NSLog(@"%@", prompt);
    char inputString[255];
    char *result = fgets(inputString, 255, stdin);
    
    if (result == NULL) {
        return NULL;
    }
    
    NSString *numberString = [[NSString stringWithCString:result encoding:NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    return numberString;
}
@end
