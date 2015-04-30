//
//  InitialViewController.m
//  TheEvilQuiz
//
//  Created by David Forse on 3/27/14.
//  Copyright (c) 2014 David Forse. All rights reserved.
//

#import "InitialViewController.h"
#import "ViewController.h"



@interface InitialViewController ()


//display the Category of the question that is to be asked
@property (weak, nonatomic) IBOutlet UILabel *categoryOutput;




@end


@implementation InitialViewController



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
    
    
    
    
    //initializing arrays
    
    category = [[NSMutableArray alloc]init];
    explination = [[NSMutableArray alloc] init];
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc]init];
    
    NSMutableArray *questionIndices = [NSMutableArray  array];
    
    
    
   //************************Randomize for Quiz**********************************
   //Conditional to reset the quiz after 10 questions
    if (count % 10 == 0) {
   
    // the number of quiz questions
    int questionCount = 20;
    
    // add questions to questionIndices array
    for (int i = 0; i < questionCount; i++) {
        [questionIndices addObject:@(i)];
        
    }
    //randomize questionIndices array
    for (int i = questionCount - 1; i > 0; --i) {
        [questionIndices exchangeObjectAtIndex: i
                             withObjectAtIndex: arc4random_uniform((uint32_t)i + 1)];
        
    }
    //insert ranomized questionIndices into holders for questions 1-9
    for (int i = 0; i < 9; i++) {
        
        holder1 =[questionIndices[0] intValue];
        holder2 =[questionIndices[1] intValue];
        holder3 =[questionIndices[2] intValue];
        holder4 =[questionIndices[3] intValue];
        holder5 =[questionIndices[4] intValue];
        holder6 =[questionIndices[5] intValue];
        holder7 =[questionIndices[6] intValue];
        holder8 =[questionIndices[7] intValue];
        holder9 =[questionIndices[8] intValue];
    
    //check the questionIndices values
    NSLog(@"questionIndices: %i", [questionIndices[i] intValue]);

        
    }
        //Final Question Randomizer
        
        int randomIndex = arc4random() % 2;
        
        if (randomIndex == 0) {
            finalQuestion=21;
        } else {
            finalQuestion=20;
        }
        
        //NSLog(@"randomIndex: %i", randomIndex);
    }
    
    
    // the quiz counter + counter log
    count++;
    NSLog(@"count2: %i", count);
    
    //quiz questions 1-9
    
    //Quiz question 1
    if (count % 10 == 1 ) {
        currentQuestion = holder1;
    }
    //Quiz question 2
    else if (count % 10 == 2 ) {
        currentQuestion = holder2;
    }
    //Quiz question 3
    else if (count % 10 == 3) {
        currentQuestion = holder3;
    }
    //Quiz question 4
    else if (count % 10 == 4) {
        currentQuestion = holder4;
    }
    //Quiz question 5
    else if (count % 10 == 5) {
        currentQuestion = holder5;
    }
    //Quiz question 6
    else if (count % 10 == 6) {
        currentQuestion = holder6;
    }
    //Quiz question 7
    else if (count % 10 == 7) {
        currentQuestion = holder7;
    }
    //Quiz question 8
    else if (count % 10 == 8) {
        currentQuestion = holder8;
    }
    //Quiz question 9
    else if (count % 10 == 9) {
        currentQuestion = holder9;
    }
    
    //final question #10
    
    else {
        currentQuestion =finalQuestion;
        
    }
    
    
    //************************************************Regular Quiz Questions****************************************
    
    // Biden Question
    [category addObject:@"Category: Politics"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"Who is the current Vice President of the United States?"];
    [answers addObject:@"Biden"];
    
    
    // Wallace Question
    [category addObject:@"Category: History"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"This former Vice-President of the United States was Secretary of Agriculture from 1933 to 1940?"];
    [answers addObject:@"Wallace"];
   
    
    // Clemens
    [category addObject:@"Category: Literature"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"This famous American author wrote the novel Tom Sawyer"];
    [answers addObject:@"Clemens"];
   
    
    // The Muses
    [category addObject:@"Category: History"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"In Greek mythology, the fountain Aganippe was sacred to whom?"];
    [answers addObject:@"Muses"];
   
    
    //*********************************** 5 ***************************************************************
    
    //Ezra Pound
    [category addObject:@"Category: History"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"Who was the person who gave T.S Eliot the nickname Old Possum?"];
    [answers addObject:@"Pound"];
    
    
    //leatherback
    [category addObject:@"Category: Science"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What is the largest species of sea turtle?"];
    [answers addObject:@"Leatherback"];
    
    
    //Jupiter
    [category addObject:@"Category: Science"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"Which planet in our solar system has the shortest day?"];
    [answers addObject:@"Jupiter"];
    
    
    //GAVRILO PRINCIP
    [category addObject:@"Category: History"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"Who assassinated the Archduke Ferdinand?"];
    [answers addObject:@"Princip"];
   
    
    //Moon
    [category addObject:@"Category: Science"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What is the main metallic element in the core of the moon?"];
    [answers addObject:@"Iron"];
   
    //***************************************** 10 *******************************************************************
    
    //Citrus
    [category addObject:@"Category: Science"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What is the technical genus category of lemons, oranges, limes?"];
    [answers addObject:@"Citrus"];
   
    
    //Oak
    [category addObject:@"Category: Wine"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What is the tree that most wine barrels are made of?"];
    [answers addObject:@"Oak"];
    
    
    //Finland
    [category addObject:@"Category: Geography"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"Tarja Halonen, Martti Ahtisaari, and Mauno Koivisto have been presidents of Suomi, which is known in English as?"];
    [answers addObject:@"Finland"];
    
    
    
    //Greenland
    [category addObject:@"Category: Geography"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What is the least densely populated country in the world?"];
    [answers addObject:@"Greenland"];
    
    
    //Norway
    [category addObject:@"Category: Geography"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"Which understated northern European nation grew to become by the early 2000s the fourth richest globally in per capita income due largely to prudent treatment of oil revenues?"];
    [answers addObject:@"Norway"];
    
    //********************************************** 15 **********************************************************************
    
    //tofu
    [category addObject:@"Category: Cuisine"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What popular East Asian food means 'bean curdled'?"];
    [answers addObject:@"Tofu"];
   
    
    //Will
    [category addObject:@"Category: Legal Procedure"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"A codicil is a supplementary text which alters what sort of legal document?"];
    [answers addObject:@"Will"];
    

    //Patel
    [category addObject:@"Category: Culture"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What common Hindu/Indian surname derives from 'a piece of land' and referred to a landowner/tenant farmer(using 'e')?"];
    [answers addObject:@"Patel"];
    
    
    //Yahoo
    [category addObject:@"Category: Literature"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What name for a crude greedy humanoid species in Jonathan Swift's 1726 Gulliver's Travels came to refer to a rude and violent person, and is also a big modern technology corporation?"];
    [answers addObject:@"Yahoo"];
    
    
    //Dubai
    [category addObject:@"Category: Geography"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter \n2. Spell the name correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"Which city's airport became the busiest for international passengers in 2014, overtaking London's Heathrow?"];
    [answers addObject:@"Dubai"];
    
    //************************************************* 20 ***********************************************************************
    
    //Trans
    [category addObject:@"Category: Word Play"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter of the word \n2. Spell the word correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What word meaning 'across' prefixes the following to make six new words: mission, parent, script, late, fix and fuse?"];
    [answers addObject:@"Trans"];
    
    
    //************************Final Category******************************************
    
    
    //Fathometer 21
    [category addObject:@"Final Category: Science"];
    [explination addObject:@"To answer the question correctly you must:\n1. Capitalize the first letter of the word \n2. Spell the word correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"A old genericized trademark for an instrument which measures water depth?"];
    [answers addObject:@"Fathometer"];
    
    
    //DEFCON 22
    [category addObject:@"Final Category: Millitary"];
    [explination addObject:@"To answer the question correctly you must:\n1. Acronyms letters are all capitalized with no periods \n2. Spell the word correctly \n3. Only use the last name of a person \n4. Answers are only one word \n***As an example Abraham Lincoln will be written as Lincoln***  \nFailure to follow directions will result in a loss"];
    [questions addObject:@"What is the acronym referring to a scale of readiness in the US military, derived from 'defense readiness condition?"];
    [answers addObject:@"DEFCON"];
    
    

    
    
    
    
    
    //**************************The variable screen output*********************************
    
    //Sets the label text that lets the user know the Category Question
    [_categoryOutput setText:[category objectAtIndex:currentQuestion]];
    
    //Sets the label text that lets the user know the Explination of the Rules
    [_initialPageQuestionOutput setText:[explination objectAtIndex:currentQuestion]];
    
    //**************************Background Image*******************************************
    //Sets the background to the standard background image
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

- (IBAction)intialPageButton:(id)sender {
}




@end
