//
//  FoundationCalculatorAppDelegate.h
//  FoundationCalculator
//
//  Created by 孙 昱 on 12-6-4.
//  Copyright 2012 联想（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FoundationCalculatorViewController;

@interface FoundationCalculatorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    FoundationCalculatorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet FoundationCalculatorViewController *viewController;

@end

