//
//  CalculatorBrain.h
//  Calculator
//
//  Created by Danny Sun on 12-5-23.
//  Copyright 2012 PPLive Corporation. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject {
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
