//
//  QuestionViewController.h
//  Nerd
//
//  Created by Keith Pitt on 24/03/11.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuestionViewController;

@protocol QuestionViewControllerDelegate <NSObject>

- (void)onAnsweredQuestionWithYes;
- (void)onAnsweredQuestionWithNo;

@end

@interface QuestionViewController : UIViewController {
    
    NSString *_question;
    NSNumber *_answer;
    NSString *_image;
    
    UILabel *_questionLabel;
    UIButton *_noButton;
    UIButton *_yesButton;
    UIImageView *_imageView;
    
    id <QuestionViewControllerDelegate> _delegate;
    
}

@property (nonatomic, assign) id <QuestionViewControllerDelegate> delegate;

@property (nonatomic, retain) NSString *question;
@property (nonatomic, retain) NSNumber *answer;
@property (nonatomic, retain) NSString *image;

@property (nonatomic, retain) IBOutlet UILabel *questionLabel;
@property (nonatomic, retain) IBOutlet UIButton *noButton;
@property (nonatomic, retain) IBOutlet UIButton *yesButton;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;

@end
