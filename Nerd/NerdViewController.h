//
//  NerdViewController.h
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "QuestionViewController.h"

@interface NerdViewController : UIViewController <QuestionViewControllerDelegate> {
    
    NSMutableArray *questionControllers;
    
    QuestionViewController *currentQuestionController;
    
    int currentControllerIndex;
    int answersCorrect;
    
}

- (void)nextQuestion;
- (void)addQuestion:(NSString*)question withAnswer:(NSNumber*)answer andImage:(NSString*)image;

@end
