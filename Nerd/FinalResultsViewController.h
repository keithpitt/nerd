//
//  FinalResultsViewController.h
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FinalResultsViewController;

@protocol FinalResultsViewControllerDelegate <NSObject>

- (void)onReadyToReset;

@end

@interface FinalResultsViewController : UIViewController {
    
    UILabel *resultsCountLabel;
    UILabel *conclusionLabel;
    
    NSString *results;
    NSString *conclusion;
    UIButton *resetButton;
    
    id <FinalResultsViewControllerDelegate> _delegate;
}

@property (nonatomic, retain) IBOutlet UILabel *conclusionLabel;
@property (nonatomic, retain) IBOutlet UILabel *resultsCountLabel;

@property (nonatomic, retain) NSString *results;
@property (nonatomic, retain) NSString *conclusion;
@property (nonatomic, retain) IBOutlet UIButton *resetButton;

@property (nonatomic, retain) id <FinalResultsViewControllerDelegate> delegate;

@end
