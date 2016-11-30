//
//  ACContentEntity+CoreDataProperties.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACContentEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ACContentEntity (CoreDataProperties)

+ (NSFetchRequest<ACContentEntity *> *)fetchRequest;

@property (nonatomic) int64_t fileHeight;
@property (nonatomic) int64_t fileType;
@property (nullable, nonatomic, copy) NSString *fileUrl;
@property (nonatomic) int64_t fileWidth;
@property (nullable, nonatomic, copy) NSString *thumbnail;
@property (nonatomic) int64_t thumbnailHeight;
@property (nonatomic) int64_t thumbnailWidth;

@end

NS_ASSUME_NONNULL_END
