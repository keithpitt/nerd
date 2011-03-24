//
//  FinalResultsViewController.h
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FinalResultsViewController : UIViewController {
    
    UILabel *resultsCountLabel;
    UILabel *conclusionLabel;
    
    NSString *results;
    NSString *conclusion;
}

@property (nonatomic, retain) IBOutlet UILabel *conclusionLabel;
@property (nonatomic, retain) IBOutlet UILabel *resultsCountLabel;

@property (nonatomic, retain) NSString *results;
@property (nonatomic, retain) NSString *conclusion;

@end
