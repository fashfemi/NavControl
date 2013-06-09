//
//  Page2.h
//  NavControl
//
//  Created by faseyitan on 6/6/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "ReView.h"
#import "Page3.h"

@class Page3;
@interface Page2 : UIViewController
{
    Page3* page3;
    
}
@property(strong,nonatomic)  Page3* page3;

@end
