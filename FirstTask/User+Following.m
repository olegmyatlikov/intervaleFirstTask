//
//  User+Following.m
//  FirstTask
//
//  Created by Oleg Myatlikov on 5/2/17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User+Following.h"

@interface User() {
    NSMutableArray *_followers;
    NSMutableArray *_following;
}
@end

@implementation User (Following)


// get&set followers (atomic, copy)

-(NSArray *) followers {
    return _followers;
}

-(void) setFollowers:(NSArray *) followers {
    if (_followers != followers) {
        [_followers release];
        _followers = [followers mutableCopy];
    }
}


// other methods

-(void) addFollower: (User *) user {
    if (![self isFollowerPerson:user]) {
        [_followers addObject:user];
    }
}

-(void) removeFollower: (User *) user {
    [_followers removeObject: user];
}

-(void) addFollowing: (User *) user {
    if (![self isFollowingPerson:user]) {
        [_following addObject: user];
    }
}

-(void) removeFollowing: (User *) user {
    [_following removeObject: user];
}

-(BOOL) isFollowerPerson: (User *) user {
    return [[self followers] containsObject: user];
}

-(BOOL) isFollowingPerson: (User *) user {
    return [[self following] containsObject: user];
}


@end
