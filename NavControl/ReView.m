//
//  ReView.m
//  NavControl
//
//  Created by faseyitan on 6/6/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "ReView.h"

@interface ReView ()

@end

@implementation ReView
@synthesize swt;
@synthesize btnsubmit;
@synthesize reg;
@synthesize menu;
@synthesize  term;


@synthesize lblDOB,lblEmail,lblName,lblPhone,lblPolicy;

-(IBAction)switchPage:(id)sender{
    id page;
    if([self validateUser]){
    UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Completed" message:@"Your registration has been successful and a passcode has been sent to your phone. You need the passccode to login" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        LACAccount* menuIn=[[LACAccount alloc]initWithNibName:@"" bundle:[NSBundle mainBundle]];
        page=menuIn;
    [alert show];
    }
    else{
    UIAlertView* alertErr=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Sorry, some of the details you've entered don't match our records. Please check and try again" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        RegDetails* detIn=[[RegDetails alloc]initWithNibName:@"" bundle:[NSBundle mainBundle]];
        page=detIn;
    [alertErr show];
        
    }
    [valueHolder popOutPages:self.navigationController View2Show:page];

}
-(BOOL)validateUser{
    //Call Web Service to validate
    BOOL check=YES;
    
    return check;
}
-(IBAction)Agreed:(id)sender{
    if(swt.isOn){
        [btnsubmit setEnabled:YES];
        
    }
    else
    {
        [btnsubmit setEnabled:NO];
        
    }
    
}

-(IBAction)termsAgreed:(id)sender{
    if(self.term==nil){
        Page1* detIn=[[Page1 alloc]initWithNibName:@"Page1" bundle:[NSBundle mainBundle]];
        self.term=detIn;
    }
    [valueHolder transit2:self.navigationController View2Show:term];
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
    id dummy;
    [self Agreed:dummy];
    [super viewDidLoad];
   
    
    lblDOB.text=[RegistrationData getDOB];
    lblEmail.text=[RegistrationData getEmail];
    lblName.text=[[NSString alloc]initWithFormat:@"%@ %@ %@",[RegistrationData gettitle],
          [RegistrationData getFirstname]        ,[RegistrationData getLastname] ];
    lblPhone.text=[RegistrationData getPhoneNo];
    lblPolicy.text=[RegistrationData getPolicyNo];
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
