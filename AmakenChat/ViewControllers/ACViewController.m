//
//  ACViewController.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACViewController.h"

@interface ACViewController ()

@end

@implementation ACViewController

    
#pragma mark - View Life Cycle Methods
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(resignKeyboardOnButtonPress) name:kHideKeyboardOnButtonPress object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    

#pragma mark - Custom Methods
    
- (void)resignKeyboardOnButtonPress {
    if (self.currentField != nil) {
        [self.currentField resignFirstResponder];
    }
    
    [self.view endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
