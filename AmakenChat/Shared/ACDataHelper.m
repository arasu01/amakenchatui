//
//  ACDataHelper.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 30/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACDataHelper.h"
#import "ACCardEntity+CoreDataClass.h"
#import "ACWelcomeCardEntity+CoreDataClass.h"
#import "ACPromotionCardEntity+CoreDataClass.h"
#import "ACUserCardEntity+CoreDataClass.h"
#import "ACContentEntity+CoreDataClass.h"

@implementation ACDataHelper

+ (void)updateWelcomeCard:(NSDictionary *)welcomeDict {
    NSNumber *cardId = welcomeDict[@"CardTypeId"];
    ACCardEntity *card = [self fetchCardWithId:cardId.integerValue];
    
    if (card == nil) {
        NSEntityDescription *userCardEntity = [NSEntityDescription entityForName:@"ACCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
        card = (ACCardEntity *)[[NSManagedObject alloc] initWithEntity:userCardEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
    }
    
    card.id = ((NSNumber *)welcomeDict[@"Id"]).integerValue;
    card.cardTypeId = cardId.integerValue;
    
    
    ACWelcomeCardEntity *welcomeCard = card.welcomeCard;
    NSDictionary *welcomeCardDict = welcomeDict[@"WelcomeCard"];
    if (welcomeCard == nil) {
        NSEntityDescription *welcomeCardEntity = [NSEntityDescription entityForName:@"ACWelcomeCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
        welcomeCard = (ACWelcomeCardEntity *)[[NSManagedObject alloc] initWithEntity:welcomeCardEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
    }
    
    welcomeCard.serviceTypeId = ((NSNumber *)welcomeCardDict[@"ServiceTypeId"]).integerValue;
    welcomeCard.serviceTypeCategoryId = ((NSNumber *)welcomeCardDict[@"ServiceTypeCategoryId"]).integerValue;
    welcomeCard.cardLogo = welcomeCardDict[@"CardLogo"];
    welcomeCard.sharingText = welcomeCardDict[@"SharingText"];
    welcomeCard.channelName = welcomeCardDict[@"ChannelName"];
    welcomeCard.channelNameColor = welcomeCardDict[@"ChannelNameColor"];
    welcomeCard.channelNameAlign = welcomeCardDict[@"ChannelNameAlign"];
    welcomeCard.channelNo = welcomeCardDict[@"ChannelNo"];
    welcomeCard.channelNoColor = welcomeCardDict[@"ChannelNoColor"];
    welcomeCard.channelNoAlign = welcomeCardDict[@"ChannelNoAlign"];
    welcomeCard.addedDate = welcomeCardDict[@"AddedDate"];
    welcomeCard.addedDateColor = welcomeCardDict[@"AddedDateColor"];
    welcomeCard.headText = welcomeCardDict[@"HeadText"];
    welcomeCard.headTextColor = welcomeCardDict[@"HeadTextColor"];
    welcomeCard.headTextAlign = welcomeCardDict[@"HeadTextAlign"];
    welcomeCard.headTextBold = welcomeCardDict[@"HeadTextBold"];
    welcomeCard.bodyText = welcomeCardDict[@"BodyText"];
    welcomeCard.bodyTextColor = welcomeCardDict[@"BodyTextColor"];
    welcomeCard.bodyTextAlign = welcomeCardDict[@"BodyTextAlign"];
    welcomeCard.bodyTextBold = welcomeCardDict[@"BodyTextBold"];
    welcomeCard.serviceNo = ((NSNumber *)welcomeCardDict[@"ServiceNo"]).integerValue;
    welcomeCard.serviceShortCodeNo = ((NSNumber *)welcomeCardDict[@"ServiceShortCodeNo"]).integerValue;
    welcomeCard.shortCode = welcomeCardDict[@"ShortCode"];
    welcomeCard.showFooter = welcomeCardDict[@"ShowFooter"];
    welcomeCard.showHelpIcon = welcomeCardDict[@"ShowHelpIcon"];
    welcomeCard.footerHelpCommand = welcomeCardDict[@"FooterHelpCommand"];
    
    NSArray *contents = welcomeCard.contents.allObjects;
    NSArray *contentsArray = welcomeCardDict[@"Contents"];
    if (contents == nil || contents.count == 0) {
        NSMutableArray *newContentsArray = [NSMutableArray array];
        for (NSDictionary *contentsDict in contentsArray) {
            NSEntityDescription *contentEntity = [NSEntityDescription entityForName:@"ACContentEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
            ACContentEntity *content = (ACContentEntity *)[[NSManagedObject alloc] initWithEntity:contentEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
            
            content.fileType = ((NSNumber *)contentsDict[@"FileType"]).integerValue;
            content.fileUrl = contentsDict[@"FileUrl"];
            content.fileHeight = ((NSNumber *)contentsDict[@"File_Height"]).integerValue;
            content.fileWidth = ((NSNumber *)contentsDict[@"File_Width"]).integerValue;
            content.thumbnail = contentsDict[@"Thumbnail"];
            content.thumbnailHeight = ((NSNumber *)contentsDict[@"Thumbnail_Height"]).integerValue;
            content.thumbnailWidth = ((NSNumber *)contentsDict[@"Thumbnail_Width"]).integerValue;
            [newContentsArray addObject:content];
        }
        welcomeCard.contents = [NSSet setWithArray:newContentsArray];
    }

    card.welcomeCard = welcomeCard;
    [kAppDelegate.managedObjectContext save:nil];
    
}

+ (void)updatePromotionCard:(NSDictionary *)promotionDict {
    NSNumber *cardId = promotionDict[@"CardTypeId"];
    ACCardEntity *card = [self fetchCardWithId:cardId.integerValue];
    
    if (card == nil) {
        NSEntityDescription *userCardEntity = [NSEntityDescription entityForName:@"ACCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
        card = (ACCardEntity *)[[NSManagedObject alloc] initWithEntity:userCardEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
    }
    
    card.id = ((NSNumber *)promotionDict[@"Id"]).integerValue;
    card.cardTypeId = cardId.integerValue;
    
    
    ACPromotionCardEntity *promotionCard = card.promotionCard;
    NSDictionary *promotionCardDict = promotionDict[@"PromotionCard"];
    if (promotionCard == nil) {
        NSEntityDescription *welcomeCardEntity = [NSEntityDescription entityForName:@"ACPromotionCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
        promotionCard = (ACPromotionCardEntity *)[[NSManagedObject alloc] initWithEntity:welcomeCardEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
    }
    
    promotionCard.serviceTypeID = ((NSNumber *)promotionCardDict[@"ServiceTypeID"]).integerValue;
    promotionCard.serviceTypeCategoryID = ((NSNumber *)promotionCardDict[@"ServiceTypeCategoryID"]).integerValue;
    promotionCard.cardLogo = promotionCardDict[@"CardLogo"];
    promotionCard.channelName = promotionCardDict[@"ChannelName"];
    promotionCard.channelNameColor = promotionCardDict[@"ChannelNameColor"];
    promotionCard.channelNameAlign = promotionCardDict[@"ChannelNameAlign"];
    promotionCard.channelNo = ((NSNumber *)promotionCardDict[@"ChannelNo"]).integerValue;
    promotionCard.channelNoColor = promotionCardDict[@"ChannelNoColor"];
    promotionCard.channelNoAlign = promotionCardDict[@"ChannelNoAlign"];
    promotionCard.addedDate = promotionCardDict[@"AddedDate"];
    promotionCard.addedDateColor = promotionCardDict[@"AddedDateColor"];
    promotionCard.headText = promotionCardDict[@"HeadText"];
    promotionCard.headTextColor = promotionCardDict[@"HeadTextColor"];
    promotionCard.headTextAlign = promotionCardDict[@"HeadTextAlign"];
    promotionCard.headTextBold = promotionCardDict[@"HeadTextBold"];
    promotionCard.bodyText = promotionCardDict[@"BodyText"];
    promotionCard.bodyTextColor = promotionCardDict[@"BodyTextColor"];
    promotionCard.bodyTextAlign = promotionCardDict[@"BodyTextAlign"];
    promotionCard.bodyTextBold = promotionCardDict[@"BodyTextBold"];
    promotionCard.commentsCount = promotionCardDict[@"CommentsCount"];
    promotionCard.likeCount = promotionCardDict[@"LikeCount"];
    promotionCard.viewersCount = promotionCardDict[@"ViewersCount"];
    promotionCard.canComment = promotionCardDict[@"CanComment"];
    promotionCard.canLike = promotionCardDict[@"CanLike"];
    promotionCard.canView = promotionCardDict[@"CanView"];
    promotionCard.showComments = promotionCardDict[@"ShowComments"];
    promotionCard.showLikes = promotionCardDict[@"ShowLikes"];
    promotionCard.showViews = promotionCardDict[@"ShowViews"];
    promotionCard.showMore = promotionCardDict[@"ShowMore"];
    promotionCard.moreText = promotionCardDict[@"MoreText"];
    promotionCard.moreColor = promotionCardDict[@"MoreColor"];
    promotionCard.actionType = ((NSNumber *)promotionCardDict[@"ActionType"]).integerValue;
    promotionCard.showAction = promotionCardDict[@"ShowAction"];
    promotionCard.actionText = promotionCardDict[@"ActionText"];
    promotionCard.actionColor = promotionCardDict[@"ActionColor"];
    promotionCard.promotionId = ((NSNumber *)promotionCardDict[@"PromotionId"]).integerValue;
    promotionCard.otherId = ((NSNumber *)promotionCardDict[@"OtherId"]).integerValue;
    promotionCard.showFooter = promotionCardDict[@"ShowFooter"];
    promotionCard.showHelpIcon = promotionCardDict[@"ShowHelpIcon"];
    promotionCard.footerHelpCommand = promotionCardDict[@"FooterHelpCommand"];
    
    NSArray *contents = promotionCard.contents.allObjects;
    NSArray *contentsArray = promotionCardDict[@"Contents"];
    if (contents == nil || contents.count == 0) {
        NSMutableArray *newContentsArray = [NSMutableArray array];
        for (NSDictionary *contentsDict in contentsArray) {
            NSEntityDescription *contentEntity = [NSEntityDescription entityForName:@"ACContentEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
            ACContentEntity *content = (ACContentEntity *)[[NSManagedObject alloc] initWithEntity:contentEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
            
            content.fileType = ((NSNumber *)contentsDict[@"FileType"]).integerValue;
            content.fileUrl = contentsDict[@"FileUrl"];
            content.fileHeight = ((NSNumber *)contentsDict[@"File_Height"]).integerValue;
            content.fileWidth = ((NSNumber *)contentsDict[@"File_Width"]).integerValue;
            content.thumbnail = contentsDict[@"Thumbnail"];
            content.thumbnailHeight = ((NSNumber *)contentsDict[@"Thumbnail_Height"]).integerValue;
            content.thumbnailWidth = ((NSNumber *)contentsDict[@"Thumbnail_Width"]).integerValue;
            [newContentsArray addObject:content];
        }
        promotionCard.contents = [NSSet setWithArray:newContentsArray];
    }
    
    card.promotionCard = promotionCard;
    [kAppDelegate.managedObjectContext save:nil];
}

+ (void)updateUserCard:(NSDictionary *)userDict {
    NSNumber *cardId = userDict[@"CardTypeId"];
    ACCardEntity *card = [self fetchCardWithId:cardId.integerValue];
    
    if (card == nil) {
        NSEntityDescription *userCardEntity = [NSEntityDescription entityForName:@"ACCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
        card = (ACCardEntity *)[[NSManagedObject alloc] initWithEntity:userCardEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
    }
    
    card.id = ((NSNumber *)userDict[@"Id"]).integerValue;
    card.cardTypeId = cardId.integerValue;
    
    
    ACUserCardEntity *userCard = card.userCard;
    NSDictionary *userCardDict = userDict[@"UserCard"];
    if (userCard == nil) {
        NSEntityDescription *userCardEntity = [NSEntityDescription entityForName:@"ACUserCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
        userCard = (ACUserCardEntity *)[[NSManagedObject alloc] initWithEntity:userCardEntity insertIntoManagedObjectContext:kAppDelegate.managedObjectContext];
    }
    
    userCard.messageTextBody = userCardDict[@"MessageTextBody"];
    userCard.messageTextColor = userCardDict[@"MessageTextColor"];
    userCard.messageTextAlign = userCardDict[@"MessageTextAlign"];
    userCard.messageTextBold = userCardDict[@"MessageTextBold"];
    userCard.addedDate = userCardDict[@"AddedDate"];
    userCard.addedDateColor = userCardDict[@"AddedDateColor"];
    
    card.userCard = userCard;
    [kAppDelegate.managedObjectContext save:nil];
}

+ (ACCardEntity *)fetchCardWithId:(NSInteger)cardId {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"ACCardEntity" inManagedObjectContext:kAppDelegate.managedObjectContext];
    [fetchRequest setEntity:entity];
    
    // Specify criteria for filtering which objects to fetch
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"cardTypeId == %d", cardId];
    [fetchRequest setPredicate:predicate];
    
    // Specify how the fetched objects should be sorted
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"id"  ascending:YES];
    [fetchRequest setSortDescriptors:[NSArray arrayWithObjects:sortDescriptor, nil]];
    
    NSError *error = nil;
    NSArray *fetchedObjects = [kAppDelegate.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    if (fetchedObjects != nil) {
        return fetchedObjects.firstObject;
    }
    return nil;
}

@end
