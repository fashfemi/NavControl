//
//  AppDelegate.m
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "AppDelegate.h"
#import "RootControl.h"
#import "PKRevealController.h"

@implementation AppDelegate
@synthesize navigationController;
@synthesize window;
@synthesize tabControl;
@synthesize revealController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Step 1: Create your controllers.
    UINavigationController *frontViewController = [[UINavigationController alloc] initWithRootViewController:[[AcctProducts alloc] init]];
    //UIViewController *rightViewController = [[AcctMenu alloc] init];
    UIViewController *leftViewController = [[AcctMenu alloc] init];
    
    
    // Step 2: Configure an options dictionary for the PKRevealController if necessary - in most cases the default behaviour should suffice. See PKRevealController.h for more option keys.
    /*
     NSDictionary *options = @{
     PKRevealControllerAllowsOverdrawKey : [NSNumber numberWithBool:YES],
     PKRevealControllerDisablesFrontViewInteractionKey : [NSNumber numberWithBool:YES]
     };
     */
    
    // Step 3: Instantiate your PKRevealController.
    self.revealController = [PKRevealController revealControllerWithFrontViewController:frontViewController
                                                                     leftViewController:leftViewController
                                                                    rightViewController:nil
                                                                                options:nil];
    if([self getLogged]){
   
       
       }
    else{
       
        RootControl* rootPage=[[RootControl alloc]initWithNibName:@"RootControl" bundle:[NSBundle mainBundle]];
        UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:rootPage];
        [self.revealController setFrontViewController:myNavController];
        [self.revealController showViewController:self.revealController.frontViewController];

   
    }
    [self.revealController.navigationController.navigationBar setBackgroundColor:[UIColor redColor]];
        self.window.rootViewController = self.revealController;
    
    [self.window makeKeyAndVisible];
    return YES;
}



-(BOOL)getLogged{
    return  NO;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
