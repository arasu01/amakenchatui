//
//  ACPromotionalCardTableViewCell.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACPromotionalCardTableViewCell.h"

@implementation ACPromotionalCardTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)updateCell {
    [self.collectionView reloadData];
    
    self.channelNameLabel.text = self.promotionCard.channelName;
    self.channelNameLabel.textColor = [UIColor colorWithHexString:self.promotionCard.channelNameColor];
    self.channelNameLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.promotionCard.channelNameAlign];
    
    self.channelNoLabel.text = [NSString stringWithFormat:@"Channel No.: %lld", self.promotionCard.channelNo];
    self.channelNoLabel.textColor = [UIColor colorWithHexString:self.promotionCard.channelNoColor];
    self.channelNoLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.promotionCard.channelNoAlign];
    
    self.addedDateLabel.text = [ACHelper changeWelcomeCardDateFormat:self.promotionCard.addedDate];
    self.addedDateLabel.textColor = [UIColor colorWithHexString:self.promotionCard.addedDateColor];
    
    self.headTextLabel.text = self.promotionCard.headText;
    self.headTextLabel.textColor = [UIColor colorWithHexString:self.promotionCard.headTextColor];
    self.headTextLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.promotionCard.headTextAlign];

    self.commentsCount.text = self.promotionCard.commentsCount;
    self.likesCount.text = self.promotionCard.likeCount;
    self.viewsCount.text = self.promotionCard.viewersCount;

    self.viewMoreButton.titleLabel.text = self.promotionCard.moreText;
    [self.viewMoreButton setTitleColor:[UIColor colorWithHexString:self.promotionCard.moreColor] forState:UIControlStateNormal];
    [self.viewMoreButton setTitleColor:[UIColor colorWithHexString:self.promotionCard.moreColor] forState:UIControlStateSelected];
    [self.viewMoreButton setTitleColor:[UIColor colorWithHexString:self.promotionCard.moreColor] forState:UIControlStateHighlighted];
    
    self.startChatButton.titleLabel.text = self.promotionCard.actionText;
    [self.startChatButton setTitleColor:[UIColor colorWithHexString:self.promotionCard.actionColor] forState:UIControlStateNormal];
    [self.startChatButton setTitleColor:[UIColor colorWithHexString:self.promotionCard.actionColor] forState:UIControlStateSelected];
    [self.startChatButton setTitleColor:[UIColor colorWithHexString:self.promotionCard.actionColor] forState:UIControlStateHighlighted];
    
    NSURL *url = [NSURL URLWithString:self.promotionCard.cardLogo];
    [self.cardImageView sd_setImageWithURL:url];
}

#pragma mark - UICollectionView DataSource Methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.promotionCard.contents.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ACImageSlidingCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ContentCell" forIndexPath:indexPath];
    cell.content = self.promotionCard.contents.allObjects[indexPath.item];
    [cell updateCell];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.collectionView.frame.size.width, 320);
}

@end
