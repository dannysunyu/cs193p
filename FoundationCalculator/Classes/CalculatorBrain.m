//
//  CalculatorBrain.m
//  FoundationCalculator
//
//  Created by Danny Sun on 12-6-4.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()

@property (retain) NSString *waitingOperation; 

@end


@implementation CalculatorBrain

@synthesize waitingOperation;

- (void)setOperand: (double)aDouble 
{
	operand = aDouble;
}

- (void)performWaitingOperation 
{
	if ([@"+" isEqual: waitingOperation]) {
		operand = waitingOperand + operand;
	} else if ([@"*" isEqual: waitingOperation]) {
		operand	= waitingOperand * operand;
	} else if ([@"-" isEqual: waitingOperation]) {
		operand = waitingOperand - operand;
	} else if ([@"/" isEqual: waitingOperation]) {
		if (operand) {
			operand = waitingOperand / operand;
		}
	}
}


- (double)performOperation: (NSString *)operation 
{
	if ([@"sqrt" isEqual: operation]) {
		operand = sqrt(operand);
	} else if ([@"+/-" isEqual: operation]) {
		operand = -operand;
	} else if ([@"1/x" isEqual: operation] ) {
		if (operand) {
			operand = 1 / operand;
		}
	} else if ([@"sin" isEqual: operation]) {
		operand = sin(operand);
	} else if ([@"cos" isEqual: operation]) {
		operand = cos(operand);
	} else if ([@"Store" isEqual: operation]) {
		memory = operand;
	} else if ([@"Recall" isEqual: operation]) {
		operand = memory;
	} else if ([@"Mem+" isEqual: operation]) {
		memory += operand;
	} else if ([@"C" isEqual: operation]) {
		operand = 0.0;
		waitingOperand = 0.0;
		memory = 0.0;
		waitingOperation = nil;
	} else {
		[self performWaitingOperation];
		waitingOperation = operation;
		waitingOperand = operand;
	}
	
	return operand;
}

- (void)dealloc 
{
	[waitingOperation release];
    [super dealloc];
}


@end
