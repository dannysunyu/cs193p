//
//  CalculatorBrain.h
//  FoundationCalculator
//
//  Created by Danny Sun on 12-6-4.
//  Copyright 2012 PPLive Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject 
{
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
	double memory;
}

- (void)setOperand:(double)aDouble;
- (void)setVariableAsOperand:(NSString *)variableName;
- (double)performOperation:(NSString *)operation;

@property (readonly) id expression;

+ (double)evaluateExpression:(id)anExpression
		 usingVariableValues:(NSDictionary *)variables;

+ (NSSet *)variablesInExpression:(id)anExpression;
+ (NSString *)descriptionOfExpression:(id)anExpression;

+ (id)propertyListForExpression:(id)anExpression;
+ (id)expressionForPropertyList:(id)propertyList;

@end
