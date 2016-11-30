//
//  ACChatHelper.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "ACConstant.h"


@interface ACChatHelper : NSObject
    
@property (nonatomic, strong) NSArray *chatCardArray;

+ (instancetype)sharedChatHelper;
- (void)persistChatResponse:(NSArray *)response;
- (NSInteger)cardCount;
- (id)cardObjectIndex;
- (NSArray *)fetchObjects;

@end
