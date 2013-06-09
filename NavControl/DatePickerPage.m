//
//  DatePickerPage.m
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "DatePickerPage.h"

@interface DatePickerPage ()

@end

@implementation DatePickerPage
@synthesize urdetails;
@synthesize lbl;
@synthesize date;
@synthesize loan;

-(IBAction)dateRoller:(id)sender{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    NSString *convertedString = [dateFormatter stringFromDate:date.date];
    lbl.text=convertedString;
}
-(IBAction)switchCancel:(id)sender{
    NSString* page4rm=[valueHolder getDatePage];
    //
    if([page4rm isEqual:@"UrDetails"]){
        if(self.urdetails==nil){
            UrDetails* detIn=[[UrDetails alloc]initWithNibName:@"UrDetails" bundle:[NSBundle mainBundle]];
            self.urdetails=detIn;
        }
        [valueHolder popOutPages:self.navigationController View2Show:urdetails];
        
    }
    if([page4rm isEqual:@"MissingPayment"]){
        
            MissingPayment* detIn=[[MissingPayment alloc]initWithNibName:@"MissingPayment" bundle:[NSBundle mainBundle]];
       
        [valueHolder popOutPages:self.navigationController View2Show:detIn];
        
    }
    
    if([page4rm isEqual:@"LoanRequest"]){
        
        LoanRequest* detIn=[[LoanRequest alloc]initWithNibName:@"LoanRequest" bundle:[NSBundle mainBundle]];
        
        [valueHolder popOutPages:self.navigationController View2Show:detIn];
        
    }
    
    if([page4rm isEqual:@"PersonalDetails"]){
        
        PersonalDetails* detIn=[[PersonalDetails alloc]initWithNibName:@"PersonalDetails" bundle:[NSBundle mainBundle]];
        
        [valueHolder popOutPages:self.navigationController View2Show:detIn];
        
    }
    
}

-(IBAction)switchOk:(id)sender{
   // NSString* selDate=[[NSString alloc]initWithFormat:@"%@", date.date ];
    NSString* page4rm=[valueHolder getDatePage];
    if([page4rm isEqual:@"UrDetails"]){
        if(self.urdetails==nil){
            UrDetails* detIn=[[UrDetails alloc]initWithNibName:@"UrDetails" bundle:[NSBundle mainBundle]];
            self.urdetails=detIn;
        }
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"dd/MM/yyyy"];
        
        NSString *convertedString = [dateFormatter stringFromDate:date.date];
        [valueHolder setSeletedDate:convertedString];
        [valueHolder popOutPages:self.navigationController View2Show:urdetails];
        
    }
    else if([page4rm isEqual:@"MissingPayment"]){
        
            MissingPayment* detIn=[[MissingPayment alloc]initWithNibName:@"MissingPayment" bundle:[NSBundle mainBundle]];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"dd/MM/yyyy"];
        
        NSString *convertedString = [dateFormatter stringFromDate:date.date];
        [valueHolder setSeletedDate:convertedString];
        [valueHolder popOutPages:self.navigationController View2Show:detIn];
        
    }
    else if([page4rm isEqual:@"LoanRequest"]){
        
        LoanRequest* detIn=[[LoanRequest alloc]initWithNibName:@"LoanRequest" bundle:[NSBundle mainBundle]];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"dd/MM/yyyy"];
        
        NSString *convertedString = [dateFormatter stringFromDate:date.date];
        [valueHolder setSeletedDate:convertedString];
        [valueHolder popOutPages:self.navigationController View2Show:detIn];
        
    }
    else if([page4rm isEqual:@"PersonalDetails"]){
        
        PersonalDetails* detIn=[[PersonalDetails alloc]initWithNibName:@"PersonalDetails" bundle:[NSBundle mainBundle]];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"dd/MM/yyyy"];
        
        NSString *convertedString = [dateFormatter stringFromDate:date.date];
        [valueHolder setSeletedDate:convertedString];
        [valueHolder popOutPages:self.navigationController View2Show:detIn];
        
    }
    
    
    
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
