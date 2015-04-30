//
//  ViewController.m
//  TheEvilQuiz
//
//  Created by David Forse on 3/27/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()


@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
   
   
    //************************Background Image********************************************************
    //sets the background image to the start page image
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"theOwlStart-3.png"]];
    
    [self.view addSubview:backgroundImage];
    [self.view sendSubviewToBack:backgroundImage];
    
    }

        

    - (void)didReceiveMemoryWarning
    {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }

- (IBAction)startGame:(id)sender {
   
    
    
    
}


@end

