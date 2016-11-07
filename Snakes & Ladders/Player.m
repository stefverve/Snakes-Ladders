//
//  Player.m
//  Snakes & Ladders
//
//  Created by Stefan Verveniotis on 2016-11-06.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)initWithName:(NSString *) playerName {
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameLogic = @{@4:@14, @9:@31, @17:@7, @20:@38, @28:@84, @40:@59, @51:@67, @63:@81, @64:@60, @89:@26, @95:@75, @99:@78};
        _gameOver = FALSE;
        _name = playerName;
    }
    return self;
}

- (void) roll {
    int roll = arc4random_uniform(6) + 1;
    self.currentSquare += roll;
    NSString *snakeOrLadder = @"";
    if ([self.gameLogic objectForKey:[NSNumber numberWithLong:self.currentSquare]]) {
        snakeOrLadder = @"You landed on a snake! Ohs noes! ";
        if ([[self.gameLogic objectForKey:[NSNumber numberWithLong:self.currentSquare]] integerValue] > self.currentSquare) {
            snakeOrLadder = @"You landed on a ladder! Oh boy! ";
        }
        self.currentSquare = [[self.gameLogic objectForKey:[NSNumber numberWithInteger:self.currentSquare]] integerValue];
    } else if (self.currentSquare >= 100) {
        _gameOver = !_gameOver;
        return;
    }
    NSLog(@"\nRoll = %d. %@Your new square is %ld.", roll, snakeOrLadder, (long)self.currentSquare);
}

@end
