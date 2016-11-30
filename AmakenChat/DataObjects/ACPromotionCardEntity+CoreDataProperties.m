//
//  ACPromotionCardEntity+CoreDataProperties.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACPromotionCardEntity+CoreDataProperties.h"

@implementation ACPromotionCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACPromotionCardEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ACPromotionCardEntity"];
}

@dynamic actionColor;
@dynamic actionText;
@dynamic actionType;
@dynamic addedDate;
@dynamic addedDateColor;
@dynamic bodyText;
@dynamic bodyTextAlign;
@dynamic bodyTextBold;
@dynamic bodyTextColor;
@dynamic canComment;
@dynamic canLike;
@dynamic canView;
@dynamic cardLogo;
@dynamic channelName;
@dynamic channelNameAlign;
@dynamic channelNameColor;
@dynamic channelNo;
@dynamic channelNoAlign;
@dynamic channelNoColor;
@dynamic commentsCount;
@dynamic footerHelpCommand;
@dynamic headText;
@dynamic headTextAlign;
@dynamic headTextBold;
@dynamic headTextColor;
@dynamic likeCount;
@dynamic moreColor;
@dynamic moreText;
@dynamic otherId;
@dynamic promotionId;
@dynamic serviceTypeCategoryID;
@dynamic serviceTypeID;
@dynamic showAction;
@dynamic showComments;
@dynamic showFooter;
@dynamic showHelpIcon;
@dynamic showLikes;
@dynamic showMore;
@dynamic showViews;
@dynamic viewersCount;
@dynamic contents;

@end
