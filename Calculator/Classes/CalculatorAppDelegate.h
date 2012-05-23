//
//  CalculatorAppDelegate.h
//  Calculator
//
//  Created by 孙 昱 on 12-5-23.
//  Copyright 2012 联想（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalculatorViewController;

@interface CalculatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CalculatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CalculatorViewController *viewController;

@end

