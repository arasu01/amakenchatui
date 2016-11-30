//
//  ACChatHelper.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACChatHelper.h"
#import "ACDataHelper.h"

@implementation ACChatHelper

static ACChatHelper *sharedChatHelper;
    
+ (instancetype)sharedChatHelper {
    
    if (!sharedChatHelper) {
        sharedChatHelper = [[ACChatHelper alloc] init];
        sharedChatHelper.chatCardArray = [NSArray array];
    }
    return sharedChatHelper;
}

- (NSInteger)cardCount {
    return sharedChatHelper.chatCardArray.count;
}
    
- (id)cardObjectIndex {
    return nil;
}

- (void)persistChatResponse:(NSArray *)response {
    for (NSDictionary *dict in response) {
        NSNumber *cardId = dict[@"CardTypeId"];
        NSNumber *id = dict[@"Id"];
        
        if ([cardId isEqualToNumber:@1]) {
            [ACDataHelper updateWelcomeCard:dict];
        } else if ([cardId isEqualToNumber:@6]) {
            [ACDataHelper updatePromotionCard:dict];
        } else if ([cardId isEqualToNumber:@8] && [id isEqualToNumber:@22]) {
            [ACDataHelper updateUserCard:dict];
        }
    }
}
    
- (NSArray *)fetchObjects {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"ACCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
    [fetchRequest setEntity:entity];
    // Specify criteria for filtering which objects to fetch
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cardTypeId == %d OR cardTypeId == %d OR cardTypeId == %d", 1, 6, 8];
    [fetchRequest setPredicate:predicate];
    // Specify how the fetched objects should be sorted
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"cardTypeId" ascending:YES];
    [fetchRequest setSortDescriptors:[NSArray arrayWithObjects:sortDescriptor, nil]];
    
    NSError *error = nil;
    NSArray *fetchedObjects = [kAppDelegate.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if (fetchedObjects != nil) {
        sharedChatHelper.chatCardArray = fetchedObjects;
        return fetchedObjects;
    }
    return nil;
}


@end
