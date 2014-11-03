//
//  AppDelegate.h
//  MMDrawerController-with-storybord-demo
//
//  Created by harveyliu on 5/22/14.
//  Copyright (c) 2014 com.wenzizone. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MMDrawerController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    @private
    MMDrawerController *drawerController;
}

@property (strong, nonatomic) UIWindow *window;

@end
