//
//  main.m
//  Snakes & Ladders
//
//  Created by Stefan Verveniotis on 2016-11-06.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *player1 = [Player new];
        while (!player1.gameOver) {
            char str[100];
            fgets (str, 100, stdin);
            NSString *input = [[NSString alloc] initWithUTF8String:str];
            input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([[input lowercaseString] isEqualToString:@"roll"] || [[input lowercaseString] isEqualToString:@"r"]) {
                [player1 roll];
            }
        }
        NSLog(@"Good game, y'all");
    }
    return 0;
}
