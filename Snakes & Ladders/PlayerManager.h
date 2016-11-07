//
//  PlayerManager.h
//  Snakes & Ladders
//
//  Created by Stefan Verveniotis on 2016-11-06.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray *players;
@property BOOL gameOn;

- (void) createPlayers;
- (void) roll;


@end
