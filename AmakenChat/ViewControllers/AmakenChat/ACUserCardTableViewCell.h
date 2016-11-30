//
//  ACUserCardTableViewCell.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 30/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACLabel.h"
#import "ACImageView.h"
#import "ACUserCardEntity+CoreDataClass.h"
#import "ACHelper.h"

@interface ACUserCardTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *bubbleImageView;
@property (nonatomic, strong) IBOutlet ACLabel *messageText;
@property (nonatomic, strong) IBOutlet ACLabel *sentDate;

@property (nonatomic, strong) ACUserCardEntity *userCard;

- (void)updateCell;

@end
