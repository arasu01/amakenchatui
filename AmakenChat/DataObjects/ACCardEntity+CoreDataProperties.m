//
//  ACCardEntity+CoreDataProperties.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACCardEntity+CoreDataProperties.h"

@implementation ACCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACCardEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ACCardEntity"];
}

@dynamic cardTypeId;
@dynamic id;
@dynamic promotionCard;
@dynamic userCard;
@dynamic welcomeCard;

@end
