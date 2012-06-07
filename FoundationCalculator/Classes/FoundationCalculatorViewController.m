//
//  FoundationCalculatorViewController.m
//  FoundationCalculator
//
//  Created by Danny Sun on 12-6-4.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import "FoundationCalculatorViewController.h"

@interface FoundationCalculatorViewController()

@property (readonly) CalculatorBrain *brain;

@end

@implementation FoundationCalculatorViewController

- (CalculatorBrain) *brain;
{
	if (!brain) brain = [[CalculatorBrain alloc] init];
	return brain;
}

- (BOOL)hasDotWithinDigits: (NSString *)digits 
{
	NSRange range = [digits rangeOfString: @"."];
	return range.location != NSNotFound;
}

- (IBAction)digitPressed: (UIButton *)sender 
{
	NSString *digit = sender.titleLabel.text;
	
	if (userIsInTheMiddleOfTypingANumber) 
	{
		NSString *digitsSoFar = display.text;
		// disallow illegal floating point number
		if ([@"." isEqual: digit] && [self hasDotWithinDigits: digitsSoFar]) 
		{
			digit = @"";
		}
		display.text = [digitsSoFar stringByAppendingString: digit];
	} 
	else 
	{
		// if the digit starts off with a '.' digit, add a leading '0' digit
		if ([@"." isEqual: digit]) 
		{
			digit = @"0.";
		}
		display.text = digit;
		userIsInTheMiddleOfTypingANumber = YES;
	}
}


- (IBAction)operationPressed: (UIButton *)sender 
{
	if (userIsInTheMiddleOfTypingANumber) 
	{
		self.brain.operand = display.text.doubleValue;
		userIsInTheMiddleOfTypingANumber = NO;
	}
	NSString *operation = sender.titleLabel.text;
	double result = [self.brain performOperation: operation];
	display.text = [NSString stringWithFormat: @"%g", result]];
}


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload 
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc 
{
	[brain release];
    [super dealloc];
}

@end
