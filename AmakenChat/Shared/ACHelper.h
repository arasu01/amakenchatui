//
//  ACHelper.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ACHelper : NSObject

+ (NSInteger)parseTextAlignmentFromString:(NSString *)align;

+ (NSString *)changeWelcomeCardDateFormat:(NSString *)dateString;
+ (NSString *)changePromotionCardDateFormat:(NSString *)dateString;
+ (NSString *)changeUserCardDateFormat:(NSString *)dateString;

@end
