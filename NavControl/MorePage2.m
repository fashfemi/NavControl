//
//  MorePage2.m
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "MorePage2.h"

@interface MorePage2 ()

@end

@implementation MorePage2
@synthesize sld;
@synthesize txtprd;
@synthesize txtfrq;
@synthesize more3;
@synthesize bar;
@synthesize lblyear;
@synthesize pickBank;

@synthesize btmMore,btmProd,btmAcct;
-(IBAction)Prod:(id)sender{
    if (self.btmProd==nil) {
        Product* detin=[[Product alloc]initWithNibName:@"Product" bundle:[NSBundle mainBundle]];
        self.btmProd=detin;
    }
    [valueHolder transit1:self.navigationController View2Show:btmProd];
}

-(void)viewWillAppear:(BOOL)animated{
    [txtfrq setText:[valueHolder getCustomPickerValue]];
    [valueHolder setCustomPickerValue:@""];
    
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

-(IBAction)picker:(id)sender{
    if(self.pickBank==nil){
        JustPicker* bankIn=[[JustPicker alloc]initWithNibName:@"JustPicker" bundle:[NSBundle mainBundle]];
        self.pickBank=bankIn;
    }
    NSArray* arr=[[NSArray alloc]initWithObjects:@"Monthly",
                  @"Quarterly",
                  @"Semi-Annually",
                  @"Annually", nil];
    self.pickBank.data=arr;
    [valueHolder setCustomPickerPage:@"MorePage2"];
    [valueHolder transit1:self.navigationController View2Show:pickBank];
}



-(IBAction)switchPage:(id)sender{
    //if(self.more3==nil){
        morePage3* moreIn=[[morePage3 alloc]initWithNibName:@"morePage3" bundle:[NSBundle mainBundle]];
        self.more3=moreIn;
        
   // }
    [valueHolder transit1:self.navigationController View2Show:more3];
}
-(IBAction)backGround:(id)sender{
    [txtfrq resignFirstResponder];
    [txtprd resignFirstResponder];
}
-(IBAction)Type:(id)sender{
    [sender resignFirstResponder];
    
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==0){
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Loggin Out Account!" message:@"You have successfully Logged Out!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        [valueHolder pop2Root:self.navigationController];
    }
}
-(IBAction)signOut:(id)sender{
    UIActionSheet* askOut=[[UIActionSheet alloc]initWithTitle:@"Are you sure you want to signout?" delegate:self cancelButtonTitle:@"No" destructiveButtonTitle:@"Yes" otherButtonTitles: nil];
    [askOut showInView:self.view];
    
}
-(IBAction)sldAction:(id)sender{
    txtprd.text=[[NSString alloc]initWithFormat:@"%i",(int)sld.value ];
    NSDate* nowToday=[NSDate new];
    NSCalendar* calender=[NSCalendar currentCalendar];
    NSDateComponents* component=[[NSDateComponents alloc]init];
    [component setYear:(NSInteger)sld.value];
    NSDate* lastDate=(NSDate*)[calender dateByAddingComponents:component toDate:nowToday options:0];
    
    NSDateFormatter* dfor=[[NSDateFormatter alloc]init];
    [dfor setDateFormat:@"MMM dd yyyy"];
    lblyear.text=[[NSString alloc]initWithFormat:@"Your cover maturity wil be %@",[dfor stringFromDate:lastDate ]];
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
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"SignOut" style:UIBarButtonItemStylePlain target:self action:@selector(signOut:)];
    self.navigationItem.rightBarButtonItem=btnOut;
    
    
    if([valueHolder getLoginStatus]){
        [bar setHidden:NO];
    }
    else{
        [bar setHidden:YES];
    }
    
    
    self.title=@"More Cover";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
