//
//  User+ForPersonBirthdayProtocol.h
//  FirstTask
//
//  Created by Admin on 26.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User.h"

@interface User (ForPersonBirthdayProtocol)

-(NSDateFormatter *) dateFormatter;
-(NSString *) dateFormatToDDMM: (NSDate *) date;
-(NSDate *) stringToDate: (NSString *) dateInString;

@end
