//
//  InputManager.m
//  Snakes & Ladders
//
//  Created by Stefan Verveniotis on 2016-11-06.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "InputManager.h"

@implementation InputManager

+ (NSString *) getString {
    char str[100];
    fgets (str, 100, stdin);
    NSString *input = [[NSString alloc] initWithUTF8String:str];
    input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return input;
}

@end
