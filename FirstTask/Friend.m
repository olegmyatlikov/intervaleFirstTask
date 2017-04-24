//
//  Friend.m
//  FirstTask
//
//  Created by Admin on 24.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "Friend.h"

@implementation Friend

-(BOOL) isBlocked {
    return ([_blocked integerValue] == 1);
}

@end
