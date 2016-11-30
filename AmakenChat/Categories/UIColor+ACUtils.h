//
//  UIColor+ACUtils.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ACUtils)
    
+ (UIColor *) colorWithHexString: (NSString *) hexString;
+ (CGFloat) colorComponentFrom: (NSString *) string start: (NSUInteger) start length: (NSUInteger) length;
    
+ (UIColor *)acWhiteColor;
+ (UIColor *)acThemeColor;
+ (UIColor *)acLightGrayColor;
    
@end
