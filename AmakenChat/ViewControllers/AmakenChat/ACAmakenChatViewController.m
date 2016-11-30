//
//  ACAmakenChatViewController.m
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import "ACAmakenChatViewController.h"
#import "ACChatHelper.h"
#import "ACWelcomeCardTableViewCell.h"
#import "ACPromotionalCardTableViewCell.h"
#import "ACCardEntity+CoreDataClass.h"
#import "ACUserCardTableViewCell.h"

#define welcomeCellIdentifier @"WelcomeCell"
#define promotionCellIdentifier @"PromotionCell"
#define userCellIdentifier @"UserCardCell"

@interface ACAmakenChatViewController () <UITableViewDataSource>
    
@property (nonatomic, strong) IBOutlet NSLayoutConstraint *chatViewBottomConstraint;

@end

@implementation ACAmakenChatViewController


#pragma mark - View Life Cycle Methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(adjustForKeyboard:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(adjustForKeyboard:) name:UIKeyboardWillChangeFrameNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fetchDataFromServer) name:UIApplicationWillEnterForegroundNotification object:nil];
    
    [self customiseNavigationBar];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 100;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self fetchDataFromServer];
}


#pragma mark - Custom Methods

- (void)fetchDataFromServer {
    [[ACNetworkHelper sharedNetworkHelper] getDataWithCompletion:^(BOOL success, NSError *error) {
        [self dismissViewControllerAnimated:YES completion:nil];
        if (success) {
            [[ACChatHelper sharedChatHelper] fetchObjects];
            [self.tableView reloadData];
        } else {
            //show alert.
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error!" message:error.localizedDescription preferredStyle:UIAlertControllerStyleAlert];
            [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:nil]];
            [self presentViewController:alertController animated:YES completion:nil];
        }
    }];
}

- (void)customiseNavigationBar {
    UINavigationBar *navigationBar = self.navigationController.navigationBar;
    UILabel *headerTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, navigationBar.frame.size.width, navigationBar.frame.size.height / 2)];
    headerTitleLabel.textAlignment = NSTextAlignmentCenter;
    headerTitleLabel.textColor = [UIColor acWhiteColor];
    headerTitleLabel.font = [UIFont boldSystemFontOfSize:17.0f];
    headerTitleLabel.text = @"Al Amaken TV Chat";
    
    
    UILabel *headerSubTitleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, navigationBar.frame.size.height / 2, navigationBar.frame.size.width, navigationBar.frame.size.height / 2)];
    headerSubTitleLabel.textAlignment = NSTextAlignmentCenter;
    headerSubTitleLabel.textColor = [UIColor acLightGrayColor];
    headerSubTitleLabel.font = [UIFont systemFontOfSize:13.0f];
    headerSubTitleLabel.text = @"(Memebers 28083)";
    
    [navigationBar addSubview:headerTitleLabel];
    [navigationBar addSubview:headerSubTitleLabel];
    
    UIImage *image = [[UIImage imageNamed:@"logo_nav"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.rightBarButtonItem.enabled = NO;
}

- (void)adjustForKeyboard:(NSNotification *)notification {
    NSDictionary *userinfo = notification.userInfo;
    CGRect keyboardScreenEndFrame = ((NSValue *)userinfo[UIKeyboardFrameEndUserInfoKey]).CGRectValue;
    CGRect keyboardViewEndFrame = [self.view convertRect:keyboardScreenEndFrame toView:self.view.window];
    
    if (notification.name == UIKeyboardWillHideNotification) {
        self.chatViewBottomConstraint.constant = 0;
    } else {
        self.chatViewBottomConstraint.constant = keyboardViewEndFrame.size.height;
    }
}


#pragma mark - TableView Datasource Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[ACChatHelper sharedChatHelper] cardCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        ACWelcomeCardTableViewCell *welcomeCardCell = [tableView dequeueReusableCellWithIdentifier:welcomeCellIdentifier];
        ACCardEntity *card = [ACChatHelper sharedChatHelper].chatCardArray[indexPath.row];
        welcomeCardCell.welcomeCard = card.welcomeCard;
        [welcomeCardCell updateCell];
        return welcomeCardCell;
    } else if (indexPath.row == 1) {
        ACPromotionalCardTableViewCell *promotionCardCell = [tableView dequeueReusableCellWithIdentifier:promotionCellIdentifier];
        ACCardEntity *card = [ACChatHelper sharedChatHelper].chatCardArray[indexPath.row];
        promotionCardCell.promotionCard = card.promotionCard;
        [promotionCardCell updateCell];
        return promotionCardCell;
    } else if (indexPath.row == 2) {
        ACUserCardTableViewCell *userCardCell = [tableView dequeueReusableCellWithIdentifier:userCellIdentifier];
        ACCardEntity *card = [ACChatHelper sharedChatHelper].chatCardArray[indexPath.row];
        userCardCell.userCard = card.userCard;
        [userCardCell updateCell];
        return userCardCell;
    }
    return nil;
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
