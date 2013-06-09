//
//  Requirement.h
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegBeginPage.h"
#import "valueHolder.h"

@class RegBeginPage;
@interface Requirement : UIViewController
{
    
    RegBeginPage* begPage;
    
}

@property(strong,nonatomic)    RegBeginPage* begPage;
-(IBAction)switchPage:(id)sender;

@end
