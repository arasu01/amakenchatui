//
//  ACDataHelper.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 30/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "ACConstant.h"

@interface ACDataHelper : NSObject

+ (void)updateWelcomeCard:(NSDictionary *)welcomeDict;
+ (void)updatePromotionCard:(NSDictionary *)promotionDict;
+ (void)updateUserCard:(NSDictionary *)userDict;

@end
