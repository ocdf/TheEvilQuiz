//
//  RightViewController.m
//  TheEvilQuiz
//
//  Created by David Forse on 3/27/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import "RightViewController.h"
#import "ViewController.h"

@interface RightViewController ()
//label to display a backhanded insult
@property (weak, nonatomic) IBOutlet UILabel *rightAnswerInsult;

@end

@implementation RightViewController

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
    
    //****************Backhanded Insult generation*******************
    int randomIndex = arc4random() % 3;
    
   

backhandedInsult = [[NSMutableArray alloc] init];
    
    //****************The Backhanded Insults**************************

[backhandedInsult addObject:@"How did you get so lucky?"];
[backhandedInsult addObject:@"Clearly you used google, cheater!!"];
[backhandedInsult addObject:@"Pas Mal"];
    
    //*****************************Visual Text Output***********************
    //Sets the label text that displays the backhanded insult for the user
[_rightAnswerInsult setText:[backhandedInsult objectAtIndex:randomIndex]];
    
    //****************************Background Image************************
    //sets the background to the standard background image
    
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

@end
