//
//  PlanDetails.m
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "PlanDetails.h"

@interface PlanDetails ()

@end

@implementation PlanDetails
@synthesize txtPeriod;
@synthesize txtSave;
@synthesize txtFreq;
@synthesize risk;
@synthesize step;
@synthesize bar;
@synthesize btmMore,btmProd,btmAcct;
@synthesize pickerTitle;

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


-(IBAction)TextFormat:(id)sender{
    [valueHolder ConvertDecimal:sender];
    
}
-(IBAction)steper:(id)sender{
    
    txtPeriod.text=[[NSString alloc]initWithFormat:@"%i",(int)step.value ];
}
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
-(IBAction)swictRiskPage:(id)sender{
    NSMutableArray* control=[[NSMutableArray alloc]init];
    NSMutableArray* callName=[[NSMutableArray alloc]init];
    
    [control addObject:txtFreq];[callName addObject:@"Payment frequency"];
    [control addObject:txtPeriod];[callName addObject:@"Cover period"];
    [control addObject:txtSave];[callName addObject:@"Yearly savings"];
    
    NSString* valid=[valueHolder validator:control andCallNames:callName];
    
    if (![[valid stringByReplacingOccurrencesOfString:@" " withString:@""]isEqualToString:@""]) {
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Please fill the below fields" message:valid delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        return;
    }
   // if(self.risk==nil){
        RiskPage* riskIn=[[RiskPage alloc]initWithNibName:@"RiskPage" bundle:[NSBundle mainBundle]];
        risk=riskIn;
  //  }
    [valueHolder transit1:self.navigationController View2Show:risk];
}
-(IBAction)TypeEnd:(id)sender{
    [sender resignFirstResponder];
    
}
-(IBAction)backgroundTouch:(id)sender{
    [txtSave resignFirstResponder];
    [txtPeriod resignFirstResponder];
    
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
-(void)viewWillAppear:(BOOL)animated{
    if(![[valueHolder getCustomPickerValue]isEqualToString:@""])
    {
        txtFreq.text=[valueHolder getCustomPickerValue];
        [valueHolder setCustomPickerValue:@""];
        
    }
    
}
-(IBAction)picker:(id)sender{
    // if(self.pickerTitle==nil){
    JustPicker* bankIn=[[JustPicker alloc]initWithNibName:@"JustPicker" bundle:[NSBundle mainBundle]];
    self.pickerTitle=bankIn;
    // }
    NSArray* arr=[[NSArray alloc]initWithObjects:
                  @"Monthly",
                  @"Quarterly",
                  @"Semi-Annually",
                  @"Annually",
                  nil];
    self.pickerTitle.data=arr;
    [valueHolder setCustomPickerPage:@"PlanDetails"];
    [valueHolder transit1:self.navigationController View2Show:pickerTitle];
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

    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(RetHome)];
    self.navigationItem.rightBarButtonItem=btnOut;
    self.title=@"Plan Details";
    
    if([valueHolder getLoginStatus]){
        [bar setHidden:NO];
    }
    else{
        [bar setHidden:YES];
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
