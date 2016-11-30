//
//  ACCardEntity+CoreDataProperties.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACCardEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ACCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACCardEntity *> *)fetchRequest;

@property (nonatomic) int64_t cardTypeId;
@property (nonatomic) int64_t id;
@property (nullable, nonatomic, retain) ACPromotionCardEntity *promotionCard;
@property (nullable, nonatomic, retain) ACUserCardEntity *userCard;
@property (nullable, nonatomic, retain) ACWelcomeCardEntity *welcomeCard;

@end

NS_ASSUME_NONNULL_END
