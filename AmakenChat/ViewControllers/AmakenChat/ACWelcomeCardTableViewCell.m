//
//  ACWelcomeCardTableViewCell.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACWelcomeCardTableViewCell.h"


@implementation ACWelcomeCardTableViewCell 

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
    
    self.channelNameLabel.text = self.welcomeCard.channelName;
    self.channelNameLabel.textColor = [UIColor colorWithHexString:self.welcomeCard.channelNameColor];
    self.channelNameLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.welcomeCard.channelNameAlign];
    
    self.channelNoLabel.text = [NSString stringWithFormat:@"Channel No.: %@", self.welcomeCard.channelNo];
    self.channelNoLabel.textColor = [UIColor colorWithHexString:self.welcomeCard.channelNoColor];
    self.channelNoLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.welcomeCard.channelNoAlign];
    
    self.addedDateLabel.text = [ACHelper changeWelcomeCardDateFormat:self.welcomeCard.addedDate];
    self.addedDateLabel.textColor = [UIColor colorWithHexString:self.welcomeCard.addedDateColor];
    
    self.headTextLabel.text = self.welcomeCard.headText;
    self.headTextLabel.textColor = [UIColor colorWithHexString:self.welcomeCard.headTextColor];
    self.headTextLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.welcomeCard.headTextAlign];
    
    NSString *bodyText = self.welcomeCard.bodyText;
    NSArray *bodyTextArray = [bodyText componentsSeparatedByString:@"\\n "];
    
    self.bodyTextLabel.textColor = [UIColor colorWithHexString:self.welcomeCard.bodyTextColor];
    self.bodyTextLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.welcomeCard.bodyTextAlign];
    self.bodyTextCharacterLimitLabel.textColor = [UIColor colorWithHexString:self.welcomeCard.bodyTextColor];
    self.bodyTextCharacterLimitLabel.textAlignment = [ACHelper parseTextAlignmentFromString:self.welcomeCard.bodyTextAlign];
    
    if (bodyTextArray.count == 2) {
        self.bodyTextLabel.text = bodyTextArray[0];
        self.bodyTextCharacterLimitLabel.text = bodyTextArray[1];
    } else {
        self.bodyTextLabel.text = bodyText;
        self.bodyTextCharacterLimitLabel.text = nil;
    }
    
    NSURL *url = [NSURL URLWithString:self.welcomeCard.cardLogo];
    [self.cardImageView sd_setImageWithURL:url];
}


#pragma mark - UICollectionView DataSource Methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.welcomeCard.contents.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ACImageSlidingCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ContentCell" forIndexPath:indexPath];
    cell.content = self.welcomeCard.contents.allObjects[indexPath.item];
    [cell updateCell];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(self.collectionView.frame.size.width, 320);
}

@end
