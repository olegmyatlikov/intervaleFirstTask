//
//  User+ForPersonBirthdayProtocol.m
//  FirstTask
//
//  Created by Admin on 26.04.17.
//  Copyright © 2017 Oleg Myatlikov. All rights reserved.
//

#import "User+ForPersonBirthdayProtocol.h"

@implementation User (ForPersonBirthdayProtocol)

-(BOOL) isTodayBirthDate {
    return ([[self dateFormatToDDMM:[self birthDate]] isEqualToString:[self dateFormatToDDMM: [NSDate date]]]);
}

-(void) setBirthDateFromString: (NSString *) dateInString {
    NSDate *dateFromStr = [self stringToDate:dateInString];
    if (![dateFromStr isEqualToDate: [self birthDate]]) {
        [[self birthDate] release];
        [self setBirthDate:[dateFromStr copy]];
    }
}

-(void) happyBirhday {
    if ([self isTodayBirthDate]) {
        NSLog(@"Happy birthday, %@ %@!", [self firstName], [self lastName]);
    }
}


// Вспомогательные методы

-(NSDateFormatter *) dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter new] autorelease];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:+3]];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    return dateFormatter;
}

-(NSString *) dateFormatToDDMM: (NSDate *) date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter new] autorelease];
    [dateFormatter setDateFormat:@"dd/MM"];
    return [dateFormatter stringFromDate:date];
}

-(NSDate *) stringToDate: (NSString *) dateInString {
    return [[self dateFormatter] dateFromString:dateInString];
}


@end
