//
//  ACImageSlidingCollectionViewCell.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 30/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACImageSlidingCollectionViewCell.h"

@implementation ACImageSlidingCollectionViewCell

- (void)updateCell {
    if (self.content.thumbnail != nil) {
        [self.activityIndicator startAnimating];
        NSURL *url = [NSURL URLWithString:self.content.thumbnail];
        
        [self.contentImageForView sd_setImageWithURL:url placeholderImage:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            [self.activityIndicator stopAnimating];
        }];
    } else {
        [self.activityIndicator stopAnimating];
    }
}

@end
