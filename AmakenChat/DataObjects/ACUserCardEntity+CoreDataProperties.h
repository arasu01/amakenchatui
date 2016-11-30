//
//  ACUserCardEntity+CoreDataProperties.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACUserCardEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ACUserCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACUserCardEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *addedDate;
@property (nullable, nonatomic, copy) NSString *addedDateColor;
@property (nullable, nonatomic, copy) NSString *messageTextAlign;
@property (nullable, nonatomic, copy) NSString *messageTextBody;
@property (nonatomic) BOOL messageTextBold;
@property (nullable, nonatomic, copy) NSString *messageTextColor;

@end

NS_ASSUME_NONNULL_END
