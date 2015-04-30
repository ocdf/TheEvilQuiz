//
//  WrongViewController.m
//  TheEvilQuiz
//
//  Created by David Forse on 3/27/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import "WrongViewController.h"
#import "InitialViewController.h"
#import "ViewController.h"

@interface WrongViewController ()
//label for insult
@property (weak, nonatomic) IBOutlet UILabel *wrongAnswerInsult;
//label for actual answer
@property (weak, nonatomic) IBOutlet UILabel *theActualAnswer;


- (IBAction)endGame:(id)sender;

@end

@implementation WrongViewController

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
    
    //****************Random Insult generation*******************
    int randomIndex = arc4random() % 10;
    
    
   theInsult = [[NSMutableArray alloc] init];
    
    //***************************Insults*******************************
    
    [theInsult addObject:@"Help end stupidity in our lifetime, please don't have children!"];
    [theInsult addObject:@"I feel sorry for your father"];
    [theInsult addObject:@"I'm not sure you could pour rain out of boot if the directions were written on the heel"];
    [theInsult addObject:@"Do you ever wonder what life would have been like if you got enough oxygen at birth"];
    [theInsult addObject:@"I don't know what made you so stupid, but it worked"];
    
    //********************************5**********
    
    [theInsult addObject:@"I'd like to leave you with a thought, but I'm not sure you have anywhere to put it"];
    [theInsult addObject:@"Intelligence isn't everything and in your case it's nothing"];
    [theInsult addObject:@"I bet your brain feels as good as new, seeing that you've never used it"];
    [theInsult addObject:@"I've discovered that your mind is so open that ideas simply pass through it"];
    [theInsult addObject:@"Did your parents ever ask you to run away from home?"];
    
    //*********************************10*********
    
    
    
    
    //*****************************Visual Text Output***********************
    //Sets the label text that displays the correct answer
    [_theActualAnswer setText:[answers objectAtIndex:currentQuestion]];
    
    //Sets the label text that insults the user
    [_wrongAnswerInsult setText:[theInsult objectAtIndex:randomIndex]];
    
    //****************************Background Image************************
    
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
//*****************************Button to end the game and reset the counter to 0 ***********************************
- (IBAction)endGame:(id)sender {
    //*****************************counter reset to 0 **********************************
    count = 0;
    NSLog(@"count3: %i", count);
    
    
}
@end
