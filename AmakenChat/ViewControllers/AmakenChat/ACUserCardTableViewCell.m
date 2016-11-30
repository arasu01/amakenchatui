//
//  ACUserCardTableViewCell.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 30/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACUserCardTableViewCell.h"

@implementation ACUserCardTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

#pragma mark - Custom Methods

- (void)updateCell {
    self.messageText.text = self.userCard.messageTextBody;
    self.messageText.textColor = [UIColor colorWithHexString:self.userCard.messageTextColor];
    self.messageText.textAlignment = [ACHelper parseTextAlignmentFromString:self.userCard.messageTextAlign];
    
    if ([self.userCard.messageTextBody isEqualToString:@"true"]) {
        self.messageText.font = [UIFont boldSystemFontOfSize:17.0f];
    }
    
    self.sentDate.text = [ACHelper changeUserCardDateFormat:self.userCard.addedDate];
    self.sentDate.textColor = [UIColor colorWithHexString:self.userCard.addedDateColor];
}

@end
