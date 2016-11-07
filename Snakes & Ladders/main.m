//
//  main.m
//  Snakes & Ladders
//
//  Created by Stefan Verveniotis on 2016-11-06.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"
#import "InputManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"\nWelcome to Snakes and Ladders");
        PlayerManager *pM = [PlayerManager new];
        [pM createPlayers];
        while (pM.gameOn) {
            [pM roll];
   //         if ([[input lowercaseString] isEqualToString:@"roll"] || [[input lowercaseString] isEqualToString:@"r"]) {
   //             [player roll];
            
        }
        NSLog(@"Good game, y'all");
    }
    return 0;
}
