//
//  DatePickerPage.h
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UrDetails.h"
#import "valueHolder.h"
#import "MissingPayment.h"
#import "LoanRequest.h"
#import "PersonalDetails.h"

@class UrDetails;
@class MissingPayment;
@class LoanRequest;
@class PersonalDetails;


@interface DatePickerPage : UIViewController
{
    
    UrDetails* urdetails;
    UILabel* lbl;
    UIDatePicker* date;
    LoanRequest* loan;
}

@property(strong,nonatomic) UrDetails* urdetails;
@property(strong,nonatomic)LoanRequest* loan;


@property(strong,nonatomic) IBOutlet   UILabel* lbl;
@property(strong,nonatomic) IBOutlet     UIDatePicker* date;

-(IBAction)dateRoller:(id)sender;
-(IBAction)switchCancel:(id)sender;
-(IBAction)switchOk:(id)sender;

@end
