//
//  passCodeChange3.m
//  NavControl
//
//  Created by faseyitan on 6/7/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "passCodeChange3.h"

@interface passCodeChange3 ()

@end

@implementation passCodeChange3
@synthesize txt1;
@synthesize txt2;
@synthesize txt3;
@synthesize txt4;
@synthesize txt5;

@synthesize  change2;
@synthesize  strPrevPage;

-(void)TestAndLogin{
    int summer=[txt1.text length]+[txt2.text length]+[txt3.text length]+[txt4.text length]+[txt5.text length];
    //BOOL accept=NO;
    
    if(summer==5){
        
        if ([self LoginAcct]) {
            //Change Page
            
            UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Operation Successful" message:@"Your Passcode has been successfully changed!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            
            moreBottom* actin=[[moreBottom alloc]initWithNibName:@"moreBottom" bundle:[NSBundle mainBundle]];
            [alert show];
            
            
            
            [valueHolder popOutPages:self.navigationController View2Show:actin];
            [self showTextFeilds];
            [self clearTextFields];
            
        }
        else{
            if([valueHolder getLoginTimes]<=1){
                [valueHolder setExpire:YES];
                [valueHolder pop2Root:self.navigationController];
            }
            
            [valueHolder setLoginTimes:([valueHolder getLoginTimes]-1)];
            int val=[valueHolder getLoginTimes];
            NSString *alt=[[NSString alloc]initWithFormat:@"Sorry, you have entered an incorrect passcode, So please try again, you have %i left",val ];
            
            UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Incorrect Passcode" message:alt delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
            [alert show];
            [self showTextFeilds];
            [self clearTextFields];
        }
        
        
        
    }
    else{
        
        
        
    }
    
}
-(IBAction)RetHome{
    [valueHolder pop2Root:self.navigationController];
    
    
}

-(IBAction)backgroundAction:(id)sender{
    
    [txt1 resignFirstResponder];
    [txt2 resignFirstResponder];
    [txt3 resignFirstResponder];
    [txt4 resignFirstResponder];
    [txt5 resignFirstResponder];
    
}


-(void)clearTextFields{
    
    self.txt1.text=@"";
    self.txt2.text=@"";
    self.txt3.text=@"";
    self.txt4.text=@"";
    self.txt5.text=@"";
}
-(void)hideTextField{

    self.txt1.hidden=YES;
    self.txt2.hidden=YES;
    self.txt3.hidden=YES;
    self.txt4.hidden=YES;
    self.txt5.hidden=YES;
    
    
}
-(void)showTextFeilds{

    self.txt1.hidden=NO;
    self.txt2.hidden=NO;
    self.txt3.hidden=NO;
    self.txt4.hidden=NO;
    self.txt5.hidden=NO;
}
-(BOOL)LoginAcct{
    //Call Service to Login and should return Boolean
    id dummy;
    [self backgroundAction:dummy];
    [self hideTextField];
    
    NSString* passCode=[[NSString alloc]initWithFormat:@"%@%@%@%@%@",
                        txt1.text,    txt2.text,    txt3.text,    txt4.text,    txt5.text ];
    BOOL accept=NO;
    if([[self strPrevPage]isEqualToString:passCode]){
        [valueHolder setPasscodeChange:passCode];
        accept=YES;
        [valueHolder setLoginStatus:YES];
    }
    else{
        accept=NO;
    }
    return accept;;
}




-(IBAction)textType1:(UITextField *)sender{
    
    if ([self.txt1.text length]==1) {
        [self.txt1 resignFirstResponder];
        [self.txt2 becomeFirstResponder];
        [self TestAndLogin];
        
    }
}

-(IBAction)textType2:(UITextField *)sender{
    
    if ([self.txt2.text length]==1) {
        [self.txt2 resignFirstResponder];
        [self.txt3 becomeFirstResponder];
        [self TestAndLogin];
        
    }
}

-(IBAction)textType3:(UITextField *)sender{
    //[self.textField becomeFirstResponder];
    if ([self.txt3.text length]==1) {
        [self.txt3 resignFirstResponder];
        [self.txt4 becomeFirstResponder];
        [self TestAndLogin];
        
    }
}
-(IBAction)textType4:(UITextField *)sender{
    //[self.textField becomeFirstResponder];
    if ([self.txt4.text length]==1) {
        [self.txt4 resignFirstResponder];
        [txt5 becomeFirstResponder];
        [self TestAndLogin];
        
    }
}
-(IBAction)textType5:(UITextField *)sender{
    //[self.textField becomeFirstResponder];
    if ([self.txt5.text length]==1) {
        [self.txt5 resignFirstResponder];
        [txt1 becomeFirstResponder];
        [self TestAndLogin];
        
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
    
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(RetHome)];
    self.navigationItem.rightBarButtonItem=btnOut;
    [txt1 becomeFirstResponder];
    [self.navigationItem setHidesBackButton:YES animated:YES];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
