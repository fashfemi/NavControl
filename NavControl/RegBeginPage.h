//
//  RegBeginPage.h
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "RegDetails.h"

@class RegDetails;
@interface RegBeginPage : UIViewController
{
    RegDetails* regDet;
    
}
@property(nonatomic,strong)    RegDetails* regDet;


-(IBAction)switchPage:(id)sender;
@end
