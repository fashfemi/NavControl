//
//  RegDetails.h
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonalDetails.h"
#import "valueHolder.h"

#import "RegistrationData.h"


@class PersonalDetails;
@interface RegDetails : UIViewController
{
    UITextField* txtMobile1;
    UITextField* txtMobile2;
    UITextField* txtPolicyNo;
    UITextField* txtEmail;
    PersonalDetails* pers;
    
}
@property(strong,nonatomic)IBOutlet UITextField* txtMobile1;
@property(strong,nonatomic)IBOutlet UITextField* txtMobile2;
@property(strong,nonatomic)IBOutlet UITextField* txtPolicyNo;
@property(strong,nonatomic)IBOutlet UITextField* txtEmail;
@property(strong,nonatomic)     PersonalDetails* pers;

-(IBAction)backGroudType:(id)sender;
-(IBAction)TypeEnd:(id)sender;
-(IBAction)switchPage:(id)sender;

@end
