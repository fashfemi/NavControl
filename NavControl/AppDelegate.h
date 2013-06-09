//
//  AppDelegate.h
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UIWindow* window;
    UINavigationController* navigationController;
    UITabBarController* tabControl;
}
@property (strong, nonatomic)IBOutlet UIWindow *window;
@property (strong,nonatomic) IBOutlet UINavigationController* navigationController;
@property(strong,nonatomic) IBOutlet   UITabBarController* tabControl;

@end
