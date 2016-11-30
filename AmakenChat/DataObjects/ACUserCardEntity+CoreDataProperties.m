//
//  ACUserCardEntity+CoreDataProperties.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACUserCardEntity+CoreDataProperties.h"

@implementation ACUserCardEntity (CoreDataProperties)

+ (NSFetchRequest<ACUserCardEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ACUserCardEntity"];
}

@dynamic addedDate;
@dynamic addedDateColor;
@dynamic messageTextAlign;
@dynamic messageTextBody;
@dynamic messageTextBold;
@dynamic messageTextColor;

@end
