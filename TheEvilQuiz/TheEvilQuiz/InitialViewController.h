//
//  InitialViewController.h
//  TheEvilQuiz
//
//  Created by David Forse on 3/27/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

//the arrays used for the questions
NSMutableArray *explination;
NSMutableArray *questions;
NSMutableArray *answers;
NSInteger currentQuestion;
NSMutableArray *category;
NSMutableArray *questionIndices;

//the holder for the final question
int finalQuestion;

//the holders for questions 1-9
int holder1;
int holder2;
int holder3;
int holder4;
int holder5;
int holder6;
int holder7;
int holder8;
int holder9;



@interface InitialViewController : UIViewController

//the label to display the explination
@property (weak, nonatomic) IBOutlet UILabel *initialPageQuestionOutput;


- (IBAction)intialPageButton:(id)sender;

@end
