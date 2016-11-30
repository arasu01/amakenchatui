//
//  ACWelcomeCardTableViewCell.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACChatCardTableViewCell.h"
#import "ACWelcomeCardEntity+CoreDataClass.h"

@interface ACWelcomeCardTableViewCell : ACChatCardTableViewCell <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
    
@property (nonatomic, strong) IBOutlet ACLabel *bodyTextLabel;
@property (nonatomic, strong) IBOutlet ACLabel *bodyTextCharacterLimitLabel;
@property (nonatomic, strong) ACWelcomeCardEntity *welcomeCard;

@end
