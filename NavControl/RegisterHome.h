//
//  RegisterHome.h
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Requirement.h"
#import "valueHolder.h"
@class Requirement;
@interface RegisterHome : UIViewController
{
    Requirement* req;
    
}
@property(strong,nonatomic)    Requirement* req;


-(IBAction)switchPage:(id)sender;
@end
