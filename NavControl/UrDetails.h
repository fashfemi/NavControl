//
//  UrDetails.h
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlanDetails.h"
#import "DatePickerPage.h"

#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"
#import "JustPicker.h"

@class JustPicker;
@class moreBottom;
@class Product;
@class AcctProducts;
@class PlanDetails;
@class DatePickerPage;
@interface UrDetails : UIViewController
{
    JustPicker* pickerTitle;
    UITextField* firstName;
    UITextField* lastName;
    UITextField* phoneNumber;
    UITextField* email;
    UITextField* gender;
    UITextField* DOB;
    PlanDetails* planDet;
    DatePickerPage* dater;
UIToolbar* bar;
    
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic) IBOutlet UITextField* firstName;
@property(strong,nonatomic) IBOutlet UITextField* lastName;
@property(strong,nonatomic) IBOutlet UITextField* phoneNumber;
@property(strong,nonatomic) IBOutlet UITextField* email;
@property(strong,nonatomic) IBOutlet UITextField* gender;
@property(strong,nonatomic) IBOutlet UITextField* DOB;
@property(strong,nonatomic)     PlanDetails* planDet;
@property(strong,nonatomic)    DatePickerPage* dater;
@property(strong,nonatomic)     JustPicker* pickerTitle;

-(IBAction)pickDate:(id)sender;
-(IBAction)firstNameEnd:(id)sender;
-(IBAction)lastNameEnd:(id)sender;
-(IBAction)phoneEnd:(id)sender;
-(IBAction) emailEnd:(id)sender;
-(IBAction)picker:(id)sender;
-(IBAction)switchPlanDetails:(id)sender;


-(IBAction)backGround:(id)sender;
@end
