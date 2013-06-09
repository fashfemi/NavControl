//
//  PersonalDetails.h
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "DatePickerPage.h"
#import "ReView.h"
#import "JustPicker.h"
#import "RegistrationData.h"

@class JustPicker;
@class ReView;
@class DatePickerPage;
@interface PersonalDetails : UIViewController
{
    JustPicker* pickerTitle;
    ReView* Rev;
    UITextField* txt1name;
    UITextField* txt2name;
    UITextField* txttitle;
    UITextField* txtDOB;
    DatePickerPage* datePage;

}
@property(strong,nonatomic)  JustPicker* pickerTitle;
@property(strong,nonatomic) IBOutlet   UITextField* txt1name;
@property(strong,nonatomic) IBOutlet UITextField* txt2name;
@property(strong,nonatomic) IBOutlet   UITextField* txttitle;
@property(strong,nonatomic) IBOutlet UITextField* txtDOB;
@property(strong,nonatomic)     DatePickerPage* datePage;
@property(strong,nonatomic)     ReView* Rev;



-(IBAction)picker:(id)sender;
-(IBAction)datePick:(id)sender;
-(IBAction)switchPage:(id)sender;
-(IBAction)TypeEnd:(id)sender;
-(IBAction)backGround:(id)sender;
@end
