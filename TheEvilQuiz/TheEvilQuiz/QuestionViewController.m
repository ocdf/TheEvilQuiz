//
//  QuestionViewController.m
//  TheEvilQuiz
//
//  Created by David Forse on 3/27/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import "QuestionViewController.h"
#import "InitialViewController.h"

@interface QuestionViewController ()

@end

@implementation QuestionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //***********************Variable Page Output*********************************
    
    //Sets the label text that displays the question for the user
    [_theQuestion setText:[questions objectAtIndex:currentQuestion]];
    
    //************************Background Image***********************************
    //sets background image to standard image
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"theBackground.png"]];
    
    [self.view addSubview:backgroundImage];
    [self.view sendSubviewToBack:backgroundImage];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


//***************************Question Method Button*******************************
-(IBAction)questionPageButton:(id)sender {

    //creates a string from user input
    NSString *myGuess = [_userAnswer text];
    
//checks if the user string matches the answer string and sends to the right or wrong scene
    if ([myGuess isEqualToString:[answers objectAtIndex:currentQuestion]]) {
        //Segue to the right answer scene if correct
        if (count < 10){
        [self performSegueWithIdentifier:@"RightAnswer" sender:self];
        } else {
            [self performSegueWithIdentifier:@"Final" sender:self];
            }
    }else {
        //segue to the wrong answer scene if incorrect
        [self performSegueWithIdentifier:@"WrongAnswer" sender:self];
    }
}

-(IBAction)hideKeyboard:(id)sender {
    [sender resignFirstResponder];
}

@end
