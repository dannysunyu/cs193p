//
//  FoundationCalculatorAppDelegate.h
//  FoundationCalculator
//
//  Created by Danny Sun on 12-6-4.
//  Copyright 2012 PPLive Corporation. All rights reserved.
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

