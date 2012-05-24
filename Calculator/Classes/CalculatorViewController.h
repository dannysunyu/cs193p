//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Danny Sun on 12-5-23.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController {
	IBOutlet UILabel *display;
	CalculatorBrain *brain;
	BOOL userIsInTheMiddleOfTypingANumber;
}

- (IBAction)digitPressed: (UIButton *)sender;
- (IBAction)operationPressed: (UIButton *)sender;

@end

