//
//  PlayerManager.m
//  Snakes & Ladders
//
//  Created by Stefan Verveniotis on 2016-11-06.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"
#import "InputManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [NSMutableArray new];
        _gameOn = TRUE;
    }
    return self;
}

- (void) createPlayers {
    int numOfPlayers = 0;
    while (numOfPlayers < 1) {
        NSLog(@"\nHow many players today?");
        numOfPlayers = [[InputManager getString] intValue];
    }
    for (int player = 0; player < numOfPlayers; player++) {
        NSLog(@"\nPlayer %d, please type your name:", player + 1);
        [self.players addObject:[[Player alloc] initWithName:[InputManager getString]]];
    }
}

- (void) roll {
    for (Player *player in self.players) {
        NSString *input = [NSString new];
        while (![input isEqualToString:@"roll"] &&
               ![input isEqualToString:@"quit"] &&
               ![input isEqualToString:@"r"] &&
               ![input isEqualToString:@"q"]) {
            NSLog(@"%@: [r]oll or [q]uit?", player.name);
            input = [[InputManager getString] lowercaseString];
            if ([input isEqualToString:@"quit"] ||
                [input isEqualToString:@"q"]) {
                self.gameOn = FALSE;
                return;
            } else {
                [player roll];
            }
            if (player.gameOver) {
                self.gameOn = FALSE;
                NSLog(@"Congratulations, %@!", player.name);
                return;
            }
        }
    }
}

@end
