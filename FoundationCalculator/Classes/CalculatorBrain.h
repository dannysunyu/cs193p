//
//  CalculatorBrain.h
//  FoundationCalculator
//
//  Created by Danny Sun on 12-6-4.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CalculatorBrain : NSObject 
{
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
	double memory;
}

- (void)setOperand: (double)aDouble;
- (double)performOperation: (NSString *)operation;

@end
