//
//  FinalResultsViewController.m
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import "FinalResultsViewController.h"

@implementation FinalResultsViewController

@synthesize conclusionLabel;
@synthesize resultsCountLabel;

@synthesize conclusion;
@synthesize resetButton;
@synthesize results;

@synthesize delegate = _delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [resultsCountLabel release];
    [conclusionLabel release];
    [resetButton release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (IBAction)resetButtonPressed:(id)sender {
    
    [self.delegate onReadyToReset];
    
    // NSLog(@"Reset button pressed");
    
}
#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    resultsCountLabel.text = results;
    conclusionLabel.text = conclusion;
    
}

- (void)viewDidUnload
{
    [self setResultsCountLabel:nil];
    [self setConclusionLabel:nil];
    [self setResetButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
