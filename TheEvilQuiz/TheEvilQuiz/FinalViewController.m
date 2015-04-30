//
//  FinalViewController.m
//  TheEvilQuiz
//
//  Created by David Forse on 5/23/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import "FinalViewController.h"
#import "ViewController.h"

@interface FinalViewController ()
- (IBAction)endGame:(id)sender;

@end

@implementation FinalViewController

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

- (IBAction)endGame:(id)sender {
    //*****************************counter reset to 0 **********************************
    count = 0;
    NSLog(@"count4: %i", count);
    [self performSegueWithIdentifier:@"Last" sender:self];
    

}
@end
