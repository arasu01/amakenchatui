//
//  ACContentEntity+CoreDataProperties.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACContentEntity+CoreDataProperties.h"

@implementation ACContentEntity (CoreDataProperties)

+ (NSFetchRequest<ACContentEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ACContentEntity"];
}

@dynamic fileHeight;
@dynamic fileType;
@dynamic fileUrl;
@dynamic fileWidth;
@dynamic thumbnail;
@dynamic thumbnailHeight;
@dynamic thumbnailWidth;

@end
