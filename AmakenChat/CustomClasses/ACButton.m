//
//  ACButton.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACButton.h"

@implementation ACButton

#pragma mark - Intialization Methods
    
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self customize];
        [self disableExclusiveTouch];
        [self disablekeyboard];
    }
    return self;
}
    
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customize];
        [self disableExclusiveTouch];
        [self disablekeyboard];
    }
    return self;
}
    
    
#pragma mark - Custom Methods

- (IBAction)buttonPressed:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:kHideKeyboardOnButtonPress object:nil];
}
    
- (void)disableExclusiveTouch {
    self.exclusiveTouch = NO;
}
    
- (void)disablekeyboard {
    [self addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}
    
- (void)customize {
    // to set the corner radius and background colour for the button
    self.layer.cornerRadius = 22.0f;
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.masksToBounds = YES;
}

@end
