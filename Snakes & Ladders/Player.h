//
//  Player.h
//  Snakes & Ladders
//
//  Created by Stefan Verveniotis on 2016-11-06.
//  Copyright © 2016 Stefan Verveniotis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSInteger currentSquare;
@property NSDictionary *gameLogic;
@property NSString *output;
@property BOOL gameOver;
@property NSString *name;

- (instancetype)initWithName:(NSString *) playerName;

- (void) roll;



@end
