//
//  QuestionViewController.m
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import "QuestionViewController.h"

@implementation QuestionViewController

@synthesize delegate = _delegate;

@synthesize question = _question;
@synthesize answer = _answer;
@synthesize image = _image;

@synthesize questionLabel = _questionLabel;
@synthesize noButton = _noButton;
@synthesize yesButton = _yesButton;
@synthesize imageView = _imageView;

- (void)didReceiveMemoryWarning {
    
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.questionLabel.text = self.question;
    self.imageView.image = [UIImage imageNamed:self.image];
    
    // Do any additional setup after loading the view from its nib.
    
}

- (IBAction)noButtonPressed:(id)sender {
    
    [self.delegate onAnsweredQuestionWithNo];
    
}

- (IBAction)yesButtonPressed:(id)sender {
    
    [self.delegate onAnsweredQuestionWithYes];
    
}

- (void)viewDidUnload {
    
    [self setQuestionLabel:nil];
    [self setNoButton:nil];
    [self setYesButton:nil];
    [self setImageView:nil];
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
}

- (void)dealloc {
    
    [_question release];
    [_answer release];
    
    [_questionLabel release];
    [_noButton release];
    [_yesButton release];
    [_imageView release];
    [super dealloc];
    
}

@end
