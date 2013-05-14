//
//  ViewController.m
//  Quiz
//
//  Created by Jesus Morales on 5/10/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //Call the init method implimented in the super class
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self)
    {
        //Create two arrays for the answers and questions instance variables
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        //add questions and answers to the arrays
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    //Return the address to the new object
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    //Step to the next question
    currentQuestionIndex++;
    
    //Check if past the last question
    if (currentQuestionIndex == [questions count])
    {
        //Reset count to first question
        currentQuestionIndex = 0;
    }
    
    //Get the string at that index in the question array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //Log the string to the console
    NSLog(@"Displaying question: %@", question);
    
    //Displaying the string in the question field
    [questionField setText:question];
    
    //Clear the answer field
    [answerField setText:@"?????"];
}

- (IBAction)showAnswer:(id)sender
{
    //What is the answer tot he current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    //Display it in the answer field
    [answerField setText:answer];
}

@end
