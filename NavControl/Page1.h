//
//  Page1.h
//  NavControl
//
//  Created by faseyitan on 6/6/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "Page2.h"

@class ReView;
@class Page2;
@interface Page1 : UIViewController
{
    Page2* page2;

}
@property(strong,nonatomic)    Page2* page2;


-(IBAction)swipeNext:(id)sender;
-(IBAction)swipePrev:(id)sender;

@end
