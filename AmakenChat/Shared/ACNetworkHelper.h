//
//  ACNetworkHelper.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SOAPEngine64/SOAPEngine.h>

@interface ACNetworkHelper : NSObject
    
+ (instancetype)sharedNetworkHelper;
- (void)getDataWithCompletion:(void (^)(BOOL success, NSError *error))completion;
    
@end
