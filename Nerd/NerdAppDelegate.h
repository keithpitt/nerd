//
//  NerdAppDelegate.h
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NerdViewController;

@interface NerdAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet NerdViewController *viewController;

@end
