//
//  FoundationCalculatorViewController.h
//  FoundationCalculator
//
//  Created by Danny Sun on 12-6-4.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FoundationCalculatorViewController : UIViewController 
{
	IBOutlet UILabel *display;
	CalculatorBrain *brain;
	BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPressed: (UIButton *)sender;
- (IBAction)operationPressed: (UIButton *)sender;

@end

