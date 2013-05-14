//
//  ViewController.h
//  Quiz
//
//  Created by Jesus Morales on 5/10/13.
//  Copyright (c) 2013 Jesus Morales. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //This is where instance variables are declared
    
    
    int currentQuestionIndex;
    
    //The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
