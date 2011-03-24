//
//  NerdViewController.m
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "NerdViewController.h"
#import "FinalResultsViewController.h"

@implementation NerdViewController

- (void)dealloc {
    
    [super dealloc];
    
}

- (void)didReceiveMemoryWarning {
    
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    questionControllers = [[NSMutableArray alloc] init];
    currentControllerIndex = -1;
    answersCorrect = 0;
    
    [self addQuestion:@"Is this Bulbasaur?"
           withAnswer:WO_YES
             andImage:@"Bulbasaur"];
    
    [self addQuestion:@"Does Steve Ballmer like developers?"
           withAnswer:WO_YES
             andImage:@"Balmer"];
    
    [self addQuestion:@"Sonic the Hedgehog's main characters name was Steve"
           withAnswer:WO_NO
             andImage:@"Sonic"];
    
    [self addQuestion:@"Did Optimus Prime rise from the dead?"
           withAnswer:WO_YES
             andImage:@"Prime"];
    
    [self addQuestion:@"Is Coca Cola superior to Pepsi?"
           withAnswer:WO_YES
             andImage:@"PepsiVsCoke"];
    
    [self addQuestion:@"Did Han Solo shoot first?"
           withAnswer:WO_YES
             andImage:@"HanSolo"];
    
    [self addQuestion:@"Are there only 3 Indianna Jones films?"
           withAnswer:WO_YES
             andImage:@"Indiana"];
    
    [self addQuestion:@"Was Jar Jar Binks' character good in Star Wars Episode I"
           withAnswer:WO_NO
             andImage:@"JarJar"];
    
    [self addQuestion:@"Is Mac better than PC?"
           withAnswer:WO_YES
             andImage:@"SteveJobs"];
    
    [self addQuestion:@"Did James Kirk only have one son?"
           withAnswer:WO_NO
             andImage:@"Kirk"];
    
    [self nextQuestion];
    
}

- (void)addQuestion:(NSString*)question withAnswer:(NSNumber*)answer andImage:(NSString*)image {
    
    QuestionViewController *questionController = [[QuestionViewController alloc] initWithNibName:@"QuestionViewController" bundle:nil];
    questionController.question = question;
    questionController.answer = answer;
    questionController.image = image;
    questionController.delegate = self;
    
    [questionControllers addObject:questionController];
    
    [questionController release];
    
}

- (void)nextQuestion {
    
    if (currentControllerIndex == ([questionControllers count]-1)) {
        
        FinalResultsViewController *finalResultsController = [[FinalResultsViewController alloc] initWithNibName:@"FinalResultsViewController" bundle:nil];
        
        int totalQuestions = [questionControllers count];
        
        finalResultsController.results = [NSString stringWithFormat:@"%i out of %i correct", answersCorrect, totalQuestions];
        
        if (answersCorrect == totalQuestions) {
            finalResultsController.conclusion = @"You never go full nerd.";            
        } else if (answersCorrect == 0) {
            finalResultsController.conclusion = @"You are in now way, a nerd.";
        } else if (answersCorrect == (totalQuestions / 2)) {
            finalResultsController.conclusion = @"You're a halfling (lol, DnD joke)";
        } else if (answersCorrect == (totalQuestions-1)) {
            finalResultsController.conclusion = @"Yeah, you're pretty much a nerd.";
        } else if (answersCorrect < (totalQuestions / 2)) {
            finalResultsController.conclusion = @"Only part nerd.";
        } else if (answersCorrect > (totalQuestions / 2)) {
            finalResultsController.conclusion = @"Your are mostly a nerd, mostly.";
        }
        
        [currentQuestionController.view removeFromSuperview];
        [self.view addSubview:finalResultsController.view];
        
        // Animate them
        CATransition *animation = [CATransition animation];
        animation.delegate = self;
        animation.duration = 0.35;
        animation.type = kCATransitionPush;
        animation.subtype = kCATransitionFromRight;
        animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        
        [[self.view layer] addAnimation:animation forKey:@"ShowSettingsView"];
        
    } else {
    
        if (currentControllerIndex < 0) {
            currentControllerIndex = 0;
            
            currentQuestionController = [questionControllers objectAtIndex:currentControllerIndex];
            [self.view addSubview:currentQuestionController.view];
            
        } else {
            currentControllerIndex = currentControllerIndex + 1;
            
            [currentQuestionController.view removeFromSuperview];
            
            currentQuestionController = [questionControllers objectAtIndex:currentControllerIndex];
            [self.view addSubview:currentQuestionController.view];
            
            // Animate them
            CATransition *animation = [CATransition animation];
            animation.delegate = self;
            animation.duration = 0.35;
            animation.type = kCATransitionPush;
            animation.subtype = kCATransitionFromRight;
            animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
            
            [[self.view layer] addAnimation:animation forKey:@"ShowSettingsView"];
            
        }
        
    }
    
}

- (void)onAnsweredQuestionWithNo {
    
    if ([currentQuestionController.answer boolValue] == false) {
        answersCorrect = answersCorrect + 1;
    }
    
    [self nextQuestion];
    
}

- (void)onAnsweredQuestionWithYes {
    
    if ([currentQuestionController.answer boolValue] == true) {
        answersCorrect = answersCorrect + 1;
    }
    
    [self nextQuestion];
    
}

- (void)viewDidUnload {
    
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
}

@end
