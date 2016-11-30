//
//  ACImageSlidingCollectionViewCell.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 30/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ACImageView.h"
#import "ACContentEntity+CoreDataClass.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ACImageSlidingCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) IBOutlet ACImageView *contentImageForView;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activityIndicator;

@property (nonatomic, strong) ACContentEntity *content;

- (void)updateCell;

@end
