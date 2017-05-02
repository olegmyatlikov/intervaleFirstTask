//
//  User+Following.h
//  FirstTask
//
//  Created by Oleg Myatlikov on 5/2/17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User.h"

@interface User (Following)


-(void) addFollower: (User *) user;

-(void) removeFollower: (User *) user;

-(void) addFollowing: (User *) user;

-(void) removeFollowing: (User *) user;

-(BOOL) isFollowerPerson: (User *) user;

-(BOOL) isFollowingPerson: (User *) user;


@end
