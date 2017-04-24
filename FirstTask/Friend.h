//
//  Friend.h
//  FirstTask
//
//  Created by Admin on 24.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User.h"

@interface Friend : User

@property (nonatomic, copy) NSNumber *blocked;

-(BOOL) isBlocked;

@end
