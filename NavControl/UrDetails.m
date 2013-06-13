//
//  UrDetails.m
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "UrDetails.h"
#import "PKRevealController.h"
@interface UrDetails ()

@end

@implementation UrDetails
@synthesize firstName;
@synthesize lastName;
@synthesize phoneNumber;
@synthesize email;
@synthesize DOB;
@synthesize bar;
@synthesize gender;
@synthesize planDet;
@synthesize dater;
@synthesize pickerTitle;

@synthesize btmMore,btmProd,btmAcct;


- (void)showRightView:(id)sender
{
    if (self.navigationController.revealController.focusedController == self.navigationController.revealController.rightViewController)
    {
        [self.navigationController.revealController showViewController:self.navigationController.revealController.frontViewController];
    }
    else
    {
        [self.navigationController.revealController showViewController:self.navigationController.revealController.rightViewController];
    }
}
- (void)showLeftView:(id)sender
{
    if (self.navigationController.revealController.focusedController == self.navigationController.revealController.leftViewController)
    {
        [self.navigationController.revealController showViewController:self.navigationController.revealController.frontViewController];
    }
    else
    {
        [self.navigationController.revealController showViewController:self.navigationController.revealController.leftViewController];
    }
}
-(IBAction)Prod:(id)sender{
    if (self.btmProd==nil) {
        Product* detin=[[Product alloc]initWithNibName:@"Product" bundle:[NSBundle mainBundle]];
        self.btmProd=detin;
    }
    [valueHolder transit1:self.navigationController View2Show:btmProd];
}
-(IBAction)myAcct:(id)sender{
    if (self.btmAcct==nil) {
        AcctProducts* detIn=[[AcctProducts alloc]initWithNibName:@"AcctProducts" bundle:[NSBundle mainBundle]];
        self.btmAcct=detIn;
    }
    [valueHolder transit1:self.navigationController View2Show:btmAcct];
}
-(IBAction)moreMenu:(id)sender{
    if (self.btmMore==nil) {
        moreBottom* detIn=[[moreBottom alloc]initWithNibName:@"moreBottom" bundle:[NSBundle mainBundle]];
        self.btmMore=detIn;
    }
    [valueHolder transit1:self.navigationController View2Show:btmMore];
}



- (void)viewWillAppear:(BOOL)animated{
    if(![[valueHolder getSelectedDate]isEqualToString:@""]){
    DOB.text=[valueHolder getSelectedDate];
    [valueHolder setSeletedDate:@""];
    }
    if(![[valueHolder getCustomPickerValue]isEqualToString:@""]){
        gender.text=[valueHolder getCustomPickerValue];
        [valueHolder setCustomPickerValue:@""];
        
    }
}

-(IBAction)pickDate:(id)sender{
    
    DatePickerPage* dat=[[DatePickerPage alloc]initWithNibName:@"DatePickerPage" bundle:[NSBundle mainBundle]];
    self.dater=dat;
    [valueHolder setDatePage:@"UrDetails"];
    [valueHolder transit1:self.navigationController View2Show:dater];
    
}
-(IBAction)switchPlanDetails:(id)sender{
    //if(self.planDet==nil){
    NSMutableArray* controls=[[NSMutableArray alloc]init];
    NSMutableArray* callName=[[NSMutableArray alloc]init];
    [controls addObject:firstName];[callName addObject:@"First Name"];
    [controls addObject:lastName];[callName addObject:@"Last Name"];
    [controls addObject:phoneNumber];[callName addObject:@"Phone Number"];
    [controls addObject:email];[callName addObject:@"Email"];
    [controls addObject:DOB];[callName addObject:@"Date Number"];
    [controls addObject:gender];[callName addObject:@"Gender"];
    
    NSString* valid=[valueHolder validator:controls andCallNames:callName];
    
    if (![[valid stringByReplacingOccurrencesOfString:@" " withString:@""]isEqualToString:@""]) {
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Please fill the below fields" message:valid delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        return;
    }
    
        PlanDetails* UrPlan=[[PlanDetails alloc]initWithNibName:@"PlanDetails" bundle:[NSBundle mainBundle]];
        planDet=UrPlan;
   // }
    [valueHolder transit1:self.navigationController View2Show:planDet];
}


-(IBAction)backGround:(id)sender{
    [firstName resignFirstResponder];
    [lastName resignFirstResponder];
    [phoneNumber resignFirstResponder];
    [email resignFirstResponder];
    [DOB resignFirstResponder];
    [gender resignFirstResponder];
    
}
-(IBAction)firstNameEnd:(id)sender{
    
    [firstName resignFirstResponder];
}
-(IBAction)lastNameEnd:(id)sender{
    [lastName resignFirstResponder];
}
-(IBAction)emailEnd:(id)sender{
    [email resignFirstResponder];
    
}
-(IBAction)phoneEnd:(id)sender{
    
    [phoneNumber resignFirstResponder];
}


-(IBAction)picker:(id)sender{
    // if(self.pickerTitle==nil){
    JustPicker* bankIn=[[JustPicker alloc]initWithNibName:@"JustPicker" bundle:[NSBundle mainBundle]];
    self.pickerTitle=bankIn;
    // }
    NSArray* arr=[[NSArray alloc]initWithObjects:
                  @"Male",
                  @"Female",
                   nil];
    self.pickerTitle.data=arr;
    [valueHolder setCustomPickerPage:@"UrDetails"];
    [valueHolder transit1:self.navigationController View2Show:pickerTitle];
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
    UIImage *revealImagePortrait = [UIImage imageNamed:@"reveal_menu_icon_portrait"];
    UIImage *revealImageLandscape = [UIImage imageNamed:@"reveal_menu_icon_landscape"];
    
    if (self.navigationController.revealController.type & PKRevealControllerTypeLeft)
    {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:revealImagePortrait landscapeImagePhone:revealImageLandscape style:UIBarButtonItemStylePlain target:self action:@selector(showLeftView:)];
    }
    
    if (self.navigationController.revealController.type & PKRevealControllerTypeRight)
    {
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:revealImagePortrait landscapeImagePhone:revealImageLandscape style:UIBarButtonItemStylePlain target:self action:@selector(showRightView:)];
    }

    
    
    if([valueHolder getLoginStatus]){
        [bar setHidden:NO];
    }
    else{
        [bar setHidden:YES];
    }
    
    
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(RetHome)];
    self.navigationItem.rightBarButtonItem=btnOut;
    self.title=@"Your Contact Details";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
