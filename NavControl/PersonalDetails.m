//
//  PersonalDetails.m
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "PersonalDetails.h"

@interface PersonalDetails ()

@end

@implementation PersonalDetails
@synthesize txt1name;
@synthesize txt2name;
@synthesize txtDOB;
@synthesize txttitle;
@synthesize datePage;
@synthesize Rev;
@synthesize pickerTitle;


-(IBAction)picker:(id)sender{
   // if(self.pickerTitle==nil){
        JustPicker* bankIn=[[JustPicker alloc]initWithNibName:@"JustPicker" bundle:[NSBundle mainBundle]];
        self.pickerTitle=bankIn;
   // }
    NSArray* arr=[[NSArray alloc]initWithObjects:
                  @"Mr.",
                  @"Mrs.",
                  @"Master",
                  @"Miss.",
                  @"Dr.",
                  @"Prof.", nil];
    self.pickerTitle.data=arr;
    [valueHolder setCustomPickerPage:@"PersonalDetails"];
    [valueHolder transit1:self.navigationController View2Show:pickerTitle];
}
-(void)viewWillAppear:(BOOL)animated{
    if(![[valueHolder getSelectedDate] isEqualToString:@""]){
        txtDOB.text=[valueHolder getSelectedDate];
    [valueHolder setSeletedDate:@""];
    }
    if(![[valueHolder getCustomPickerValue] isEqualToString:@""]){
    txttitle.text=[valueHolder getCustomPickerValue];
    [valueHolder setCustomPickerValue:@""];
    }
}

-(IBAction)datePick:(id)sender{
    if (self.datePage==nil) {
        DatePickerPage* dateIn=[[DatePickerPage alloc]initWithNibName:@"DatePickerPage" bundle:[NSBundle mainBundle]];
        self.datePage=dateIn;
        [valueHolder setDatePage:@"PersonalDetails"];
    }
    [valueHolder transit1:self.navigationController View2Show:datePage];
}
-(IBAction)switchPage:(id)sender{
 //   if (self.Rev==nil) {
    NSMutableArray* control=[[NSMutableArray alloc]init];
    NSMutableArray* callName=[[NSMutableArray alloc]init];
    
    [control addObject:txt1name];[callName addObject:@"First Name"];
    [control addObject:txt2name];[callName addObject:@"Last Name"];
    [control addObject:txtDOB];[callName addObject:@"Date of Birth"];

    
    NSString* valid=[valueHolder validator:control andCallNames:callName];
    
    if (![[valid stringByReplacingOccurrencesOfString:@" " withString:@""]isEqualToString:@""]) {
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Please fill the below fields" message:valid delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        return;
    }
        ReView* revIn=[[ReView alloc]initWithNibName:@"ReView" bundle:[NSBundle mainBundle]];
        self.Rev=revIn;
  //  }

    [RegistrationData settitle:txttitle.text];
    [RegistrationData setFirstname:txt1name.text];
    [RegistrationData setLastname:txt2name.text];
    [RegistrationData setDOB:txtDOB.text];
    
    
    [valueHolder transit1:self.navigationController View2Show:Rev];
   // txt1name.text=txt2name.text=txtDOB.text=txttitle.text=@"";
}


-(IBAction)TypeEnd:(id)sender{
    [sender resignFirstResponder];
    
}
-(IBAction)backGround:(id)sender{
    
    [txt2name resignFirstResponder];
    [txt1name resignFirstResponder];
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
    self.title=@"Enter Details";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
