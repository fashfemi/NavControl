//
//  ReView.h
//  NavControl
//
//  Created by faseyitan on 6/6/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "LACAccount.h"
#import "RegDetails.h"
#import "Page1.h"

@class Page1;
@class RegDetails;
@class LACAccount;
@interface ReView : UIViewController<UIActionSheetDelegate>
{
    UISwitch* swt;
    UIButton* submit;
    
    LACAccount* menu;
    RegDetails* reg;
    Page1* term;
    
    UILabel* lblName;
    UILabel* lblPhone;
    UILabel* lblPolicy;
    UILabel* lblEmail;
    UILabel* lblDOB;
    
    
}
@property(strong,nonatomic)IBOutlet    UISwitch* swt;
@property(strong,nonatomic)IBOutlet     UIButton* btnsubmit;

@property(strong,nonatomic)IBOutlet UILabel* lblName;
@property(strong,nonatomic)IBOutlet UILabel* lblPhone;
@property(strong,nonatomic)IBOutlet UILabel* lblPolicy;
@property(strong,nonatomic)IBOutlet UILabel* lblEmail;
@property(strong,nonatomic)IBOutlet UILabel* lblDOB;
@property(strong,nonatomic)    Page1* term;


@property(strong,nonatomic)     LACAccount* menu;
@property(strong,nonatomic) RegDetails* reg;

-(IBAction)switchPage:(id)sender;
-(IBAction)Agreed:(id)sender;
-(IBAction)termsAgreed:(id)sender;

@end
