//
//  ACChatCardTableViewCell.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACButton.h"
#import "ACLabel.h"
#import "ACImageView.h"
#import "UIColor+ACUtils.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "ACHelper.h"
#import "ACImageSlidingCollectionViewCell.h"

@interface ACChatCardTableViewCell : UITableViewCell
    
@property (nonatomic, strong) IBOutlet ACImageView *cardImageView;
@property (nonatomic, strong) IBOutlet ACLabel *channelNameLabel;
@property (nonatomic, strong) IBOutlet ACLabel *channelNoLabel;
@property (nonatomic, strong) IBOutlet ACLabel *addedDateLabel;
@property (nonatomic, strong) IBOutlet ACLabel *headTextLabel;
@property (nonatomic, strong) IBOutlet UICollectionView *collectionView;

- (void)updateCell;

@end
