//
//  ACWelcomeCardEntity+CoreDataProperties.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACWelcomeCardEntity+CoreDataProperties.h"

@implementation ACWelcomeCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACWelcomeCardEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ACWelcomeCardEntity"];
}

@dynamic addedDate;
@dynamic addedDateColor;
@dynamic bodyText;
@dynamic bodyTextAlign;
@dynamic bodyTextBold;
@dynamic bodyTextColor;
@dynamic cardLogo;
@dynamic channelName;
@dynamic channelNameAlign;
@dynamic channelNameColor;
@dynamic channelNo;
@dynamic channelNoAlign;
@dynamic channelNoColor;
@dynamic footerHelpCommand;
@dynamic headText;
@dynamic headTextAlign;
@dynamic headTextBold;
@dynamic headTextColor;
@dynamic serviceNo;
@dynamic serviceShortCodeNo;
@dynamic serviceTypeCategoryId;
@dynamic serviceTypeId;
@dynamic sharingText;
@dynamic shortCode;
@dynamic showFooter;
@dynamic showHelpIcon;
@dynamic contents;

@end
