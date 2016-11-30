//
//  ACPromotionalCardTableViewCell.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACChatCardTableViewCell.h"
#import "ACPromotionCardEntity+CoreDataClass.h"

@interface ACPromotionalCardTableViewCell : ACChatCardTableViewCell <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
    
@property (nonatomic, strong) IBOutlet ACButton *viewMoreButton;
@property (nonatomic, strong) IBOutlet ACButton *startChatButton;
@property (nonatomic, strong) IBOutlet ACLabel *likesCount;
@property (nonatomic, strong) IBOutlet ACLabel *viewsCount;
@property (nonatomic, strong) IBOutlet ACLabel *commentsCount;
    
@property (nonatomic, strong) ACPromotionCardEntity *promotionCard;
    
@end
