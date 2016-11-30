//
//  ACHelper.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACHelper.h"

@implementation ACHelper

+ (NSInteger)parseTextAlignmentFromString:(NSString *)align {
    if ([align isEqualToString:@"center"]) {
        return 1;
    } else if ([align isEqualToString:@"left"]) {
        return 0;
    } else if ([align isEqualToString:@"right"]) {
        return 2;
    }
    
    return 1;
}

+ (NSString *)changeWelcomeCardDateFormat:(NSString *)dateString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSS"; //7/21/2016 10:02:36 AM
    
    NSDate *formattedDate = [dateFormatter dateFromString:dateString];
    dateFormatter.dateFormat = @"dd MMM, yy hh:mm a";
    
    NSString *displayDateString = [dateFormatter stringFromDate:formattedDate];
    return displayDateString;
    
}

+ (NSString *)changePromotionCardDateFormat:(NSString *)dateString {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.dateFormat = @"MM/dd/yyyy hh:mm:ss a";
    
    NSDate *formattedDate = [dateFormatter dateFromString:dateString];
    dateFormatter.dateFormat = @"dd MMM, yy hh:mm a";
    
    NSString *displayDateString = [dateFormatter stringFromDate:formattedDate];
    return displayDateString;
}

+ (NSString *)changeUserCardDateFormat:(NSString *)dateString {
    return [self changeWelcomeCardDateFormat:dateString];
}

@end
