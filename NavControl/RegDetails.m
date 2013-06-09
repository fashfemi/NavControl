//
//  RegDetails.m
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "RegDetails.h"

@interface RegDetails ()

@end

@implementation RegDetails
@synthesize txtEmail;
@synthesize txtMobile1;
@synthesize txtMobile2;
@synthesize txtPolicyNo;
@synthesize pers;

-(IBAction)backGroudType:(id)sender{
    [txtEmail resignFirstResponder];
    [txtMobile1 resignFirstResponder];
    [txtMobile2 resignFirstResponder];
    [txtPolicyNo resignFirstResponder];
    
    
}
-(IBAction)TypeEnd:(id)sender{
    
    [sender resignFirstResponder];
}
-(IBAction)switchPage:(id)sender{
  /*  if(![txtMobile1.text isEqualToString:txtMobile2.text]){
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Mobile Number misMatch" message:@"Please re-enter your mobile number" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        txtMobile1.text=txtMobile2.text =@"";
        [alert show];
        return;
    }
   */
   // if (self.pers==nil) {
        PersonalDetails* detIn=[[PersonalDetails alloc]initWithNibName:@"PersonalDetails" bundle:[NSBundle mainBundle]];
        self.pers=detIn;
  //  }
    
    
    
    [RegistrationData setEmail:txtEmail.text];
    [RegistrationData setPhoneNo:txtMobile1.text];
    [RegistrationData setPolicyNo:txtPolicyNo.text];

     
        [valueHolder transit1:self.navigationController View2Show:self.pers];
    txtEmail.text=txtMobile1.text=txtMobile2.text=txtPolicyNo.text=@"";
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(IBAction)RetHome{
    [valueHolder pop2Root:self.navigationController];
    
 
    
}
- (void)viewDidLoad
{
       UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(RetHome)];
    self.navigationItem.rightBarButtonItem=btnOut;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
