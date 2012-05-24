//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Danny Sun on 12-5-23.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (CalculatorBrain *)brain {
	if (!brain) brain = [[CalculatorBrain alloc] init];
	return brain;
}

- (BOOL)hasDotWithinDigits: (NSString *)digits {
	NSRange range = [digits rangeOfString: @"."];
	return range.location != NSNotFound;
}

- (IBAction)digitPressed: (UIButton *)sender {
	NSString *digit = [[sender titleLabel] text];
	
	if (userIsInTheMiddleOfTypingANumber) {
		NSString *digitsSoFar = [display text];
		// disallow illegal floating point number
		if ([@"." isEqual: digit] && [self hasDotWithinDigits: digitsSoFar]) {
			digit = @"";
		}
		[display setText:[digitsSoFar stringByAppendingString: digit]];
	} else {
		// if the digit starts off with a '.' digit, add a leading '0' digit
		if ([@"." isEqual: digit]) {
			digit = @"0.";
		}
		[display setText:digit];
		userIsInTheMiddleOfTypingANumber = YES;
	}
}


- (IBAction)operationPressed: (UIButton *)sender {
	if (userIsInTheMiddleOfTypingANumber) {
		[[self brain] setOperand:[[display text] doubleValue]];
		userIsInTheMiddleOfTypingANumber = NO;
	}
	NSString *operation = [[sender titleLabel] text];
	double result = [[self brain] performOperation: operation];
	[display setText: [NSString stringWithFormat: @"%g", result]];
}

@end
