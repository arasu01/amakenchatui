//
//  AppDelegate.h
//  AmakenChat
//
//  Created by Arasuvel Theerthapathy on 29/11/16.
//  Copyright © 2016 Mallow Technologies Private Limited. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+ACUtils.h"
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    NSManagedObjectContext *managedObjectContext_;
    NSManagedObjectModel *managedObjectModel_;
    NSPersistentStoreCoordinator *persistentStoreCoordinator_;
}

@property (strong, nonatomic) UIWindow *window;

    @property (nonatomic, strong, readonly) NSManagedObjectContext *managedObjectContext;
    @property (nonatomic, strong, readonly) NSManagedObjectModel *managedObjectModel;
    @property (nonatomic, strong, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@end

