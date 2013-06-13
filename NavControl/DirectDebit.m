//
//  DirectDebit.m
//  NavControl
//
//  Created by faseyitan on 6/7/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "DirectDebit.h"

@interface DirectDebit ()

@end

@implementation DirectDebit

@synthesize btmMore,btmProd,btmAcct;
@synthesize pickBank;
@synthesize txtAcct;
@synthesize txtbank;
@synthesize txtsortcode;



-(void)viewWillAppear:(BOOL)animated{
    if(![[valueHolder getCustomPickerValue]isEqualToString:@""]){
        txtbank.text=[valueHolder getCustomPickerValue];
        [valueHolder setCustomPickerValue:@""];

    
    }
    
}

-(IBAction)switchPage:(id)sender{
    NSMutableArray* control=[[NSMutableArray alloc]init];
    NSMutableArray* callName=[[NSMutableArray alloc]init];
    
    [control addObject:txtAcct];[callName addObject:@"Account Number"];
    [control addObject:txtbank];[callName addObject:@"Bank"];
    [control addObject:txtsortcode];[callName addObject:@"Sort code"];
    
    NSString* valid=[valueHolder validator:control andCallNames:callName];
    
    if (![[valid stringByReplacingOccurrencesOfString:@" " withString:@""]isEqualToString:@""]) {
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Please fill the below fields" message:valid delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        return;
    }

    UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Request Sent!" message:@"Your Direct Debit request has been sent. A member of your product team will be in touch soon." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    moreBottom* btm=[[moreBottom alloc]initWithNibName:@"moreBottom" bundle:[NSBundle mainBundle]];
    [valueHolder popOutPages:self.navigationController View2Show:btm];
    [alert show];
    // txtbank.text=txtAcct.text= txtsortcode.text=@"";

}
-(IBAction)typeEnd:(id)sender{
    
    [sender resignFirstResponder];
}
-(IBAction)backGround:(id)sender{
    [txtAcct resignFirstResponder];
    [txtbank resignFirstResponder];
    [txtsortcode resignFirstResponder];
    
}

-(IBAction)picker:(id)sender{
    if(self.pickBank==nil){
        JustPicker* bankIn=[[JustPicker alloc]initWithNibName:@"JustPicker" bundle:[NSBundle mainBundle]];
        self.pickBank=bankIn;
    }
    NSArray* arr=[[NSArray alloc]initWithObjects:@"Access Bank",
                  @"Citibank",
                  @"Diamond Bank",
                  @"Ecobank",
                  @"Enterprise Bank Limited",
                  @"Fidelity Bank",
                  @"First Bank",
                  @"First City Monument Bank",
                  @"Guaranty Trust Bank",
                  @"Heritage Bank Plc",
                  @"Keystone Bank Limited",
                  @"Mainstreet Bank Limited",
                  @"Savannah Bank",
                  @"Skye Bank",
                  @"Stanbic IBTC Bank",
                  @"Standard Chartered Bank",
                  @"Sterling Bank",
                  @"Union Bank",
                  @"UBA",
                  @"Unity Bank Plc",
                  @"Wema bank",
                  @"Zenith Bank", nil];
    self.pickBank.data=arr;
    [valueHolder setCustomPickerPage:@"DirectDebit"];
    [valueHolder transit1:self.navigationController View2Show:pickBank];
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
    self.title=@"Direct debit";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
