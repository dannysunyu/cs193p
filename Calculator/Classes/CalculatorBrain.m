//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Danny Sun on 12-5-23.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain

- (void)setOperand: (double)aDouble {
	operand = aDouble;
}

- (void)performWaitingOperation {
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


- (double)performOperation: (NSString *)operation {
	if ([operation isEqual: @"sqrt"]) {
		operand = sqrt(operand);
	} else if ([@"+/-" isEqual: operation]) {
		operand = -operand;
	} else {
		[self performWaitingOperation];
		waitingOperation = operation;
		waitingOperand = operand;
	}

	return operand;
}

@end
