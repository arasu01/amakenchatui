//
//  ACWelcomeCardEntity+CoreDataProperties.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACWelcomeCardEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ACWelcomeCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACWelcomeCardEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *addedDate;
@property (nullable, nonatomic, copy) NSString *addedDateColor;
@property (nullable, nonatomic, copy) NSString *bodyText;
@property (nullable, nonatomic, copy) NSString *bodyTextAlign;
@property (nonatomic) BOOL bodyTextBold;
@property (nullable, nonatomic, copy) NSString *bodyTextColor;
@property (nullable, nonatomic, copy) NSString *cardLogo;
@property (nullable, nonatomic, copy) NSString *channelName;
@property (nullable, nonatomic, copy) NSString *channelNameAlign;
@property (nullable, nonatomic, copy) NSString *channelNameColor;
@property (nullable, nonatomic, copy) NSString *channelNo;
@property (nullable, nonatomic, copy) NSString *channelNoAlign;
@property (nullable, nonatomic, copy) NSString *channelNoColor;
@property (nullable, nonatomic, copy) NSString *footerHelpCommand;
@property (nullable, nonatomic, copy) NSString *headText;
@property (nullable, nonatomic, copy) NSString *headTextAlign;
@property (nonatomic) BOOL headTextBold;
@property (nullable, nonatomic, copy) NSString *headTextColor;
@property (nonatomic) int64_t serviceNo;
@property (nonatomic) int64_t serviceShortCodeNo;
@property (nonatomic) int64_t serviceTypeCategoryId;
@property (nonatomic) int64_t serviceTypeId;
@property (nullable, nonatomic, copy) NSString *sharingText;
@property (nullable, nonatomic, copy) NSString *shortCode;
@property (nonatomic) BOOL showFooter;
@property (nonatomic) BOOL showHelpIcon;
@property (nullable, nonatomic, retain) NSSet<ACContentEntity *> *contents;

@end

@interface ACWelcomeCardEntity (CoreDataGeneratedAccessors)

- (void)addContentsObject:(ACContentEntity *)value;
- (void)removeContentsObject:(ACContentEntity *)value;
- (void)addContents:(NSSet<ACContentEntity *> *)values;
- (void)removeContents:(NSSet<ACContentEntity *> *)values;

@end

NS_ASSUME_NONNULL_END
