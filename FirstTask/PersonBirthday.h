//
//  PersonBirthday.h
//  FirstTask
//
//  Created by Admin on 25.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonBirthday <NSObject>

@required
-(BOOL) isTodayBirthDate;
-(void) setBirthDateFromString: (NSString *) dateInString;

@optional
-(void) happyBirhday;

@end
