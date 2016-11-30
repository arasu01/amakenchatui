//
//  ACPromotionCardEntity+CoreDataProperties.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACPromotionCardEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ACPromotionCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACPromotionCardEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *actionColor;
@property (nullable, nonatomic, copy) NSString *actionText;
@property (nonatomic) int64_t actionType;
@property (nullable, nonatomic, copy) NSString *addedDate;
@property (nullable, nonatomic, copy) NSString *addedDateColor;
@property (nullable, nonatomic, copy) NSString *bodyText;
@property (nullable, nonatomic, copy) NSString *bodyTextAlign;
@property (nonatomic) BOOL bodyTextBold;
@property (nullable, nonatomic, copy) NSString *bodyTextColor;
@property (nonatomic) BOOL canComment;
@property (nonatomic) BOOL canLike;
@property (nonatomic) BOOL canView;
@property (nullable, nonatomic, copy) NSString *cardLogo;
@property (nullable, nonatomic, copy) NSString *channelName;
@property (nullable, nonatomic, copy) NSString *channelNameAlign;
@property (nullable, nonatomic, copy) NSString *channelNameColor;
@property (nonatomic) int64_t channelNo;
@property (nullable, nonatomic, copy) NSString *channelNoAlign;
@property (nullable, nonatomic, copy) NSString *channelNoColor;
@property (nullable, nonatomic, copy) NSString *commentsCount;
@property (nullable, nonatomic, copy) NSString *footerHelpCommand;
@property (nullable, nonatomic, copy) NSString *headText;
@property (nullable, nonatomic, copy) NSString *headTextAlign;
@property (nonatomic) BOOL headTextBold;
@property (nullable, nonatomic, copy) NSString *headTextColor;
@property (nullable, nonatomic, copy) NSString *likeCount;
@property (nullable, nonatomic, copy) NSString *moreColor;
@property (nullable, nonatomic, copy) NSString *moreText;
@property (nonatomic) int64_t otherId;
@property (nonatomic) int64_t promotionId;
@property (nonatomic) int64_t serviceTypeCategoryID;
@property (nonatomic) int64_t serviceTypeID;
@property (nonatomic) BOOL showAction;
@property (nonatomic) BOOL showComments;
@property (nonatomic) BOOL showFooter;
@property (nonatomic) BOOL showHelpIcon;
@property (nonatomic) BOOL showLikes;
@property (nonatomic) BOOL showMore;
@property (nonatomic) BOOL showViews;
@property (nullable, nonatomic, copy) NSString *viewersCount;
@property (nullable, nonatomic, retain) NSSet<ACContentEntity *> *contents;

@end

@interface ACPromotionCardEntity (CoreDataGeneratedAccessors)

- (void)addContentsObject:(ACContentEntity *)value;
- (void)removeContentsObject:(ACContentEntity *)value;
- (void)addContents:(NSSet<ACContentEntity *> *)values;
- (void)removeContents:(NSSet<ACContentEntity *> *)values;

@end

NS_ASSUME_NONNULL_END
