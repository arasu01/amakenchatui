//
//  ACChatCardTableViewCell.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACChatCardTableViewCell.h"

@implementation ACChatCardTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}


#pragma mark - Action Methods

- (IBAction)rightContentButtonPressed:(id)sender {
    CGSize cellSize = CGSizeMake(self.collectionView.frame.size.width, self.collectionView.frame.size.height);
    CGPoint contentOffset = self.collectionView.contentOffset;
    [self.collectionView scrollRectToVisible:CGRectMake(contentOffset.x + cellSize.width, contentOffset.y, cellSize.width, cellSize.height) animated:YES];
}

- (IBAction)leftContentButtonPressed:(id)sender {
    CGSize cellSize = CGSizeMake(self.collectionView.frame.size.width, self.collectionView.frame.size.height);
    CGPoint contentOffset = self.collectionView.contentOffset;
    [self.collectionView scrollRectToVisible:CGRectMake(contentOffset.x - cellSize.width, contentOffset.y, cellSize.width, cellSize.height) animated:YES];
}

@end
