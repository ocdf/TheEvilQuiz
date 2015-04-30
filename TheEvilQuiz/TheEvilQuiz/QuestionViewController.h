//
//  QuestionViewController.h
//  TheEvilQuiz
//
//  Created by David Forse on 3/27/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuestionViewController : UIViewController

//UI label to display the question
@property (weak, nonatomic) IBOutlet UILabel *theQuestion;


//place for user to enter their answer
@property (weak, nonatomic) IBOutlet UITextField *userAnswer;


-(IBAction)questionPageButton:(id)sender;
-(IBAction)hideKeyboard:(id)sender;
@end
