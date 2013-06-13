//
//  BankDet.m
//  NavControl
//
//  Created by faseyitan on 6/4/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "BankDet.h"

@interface BankDet ()

@end

@implementation BankDet
@synthesize txtAcct;
@synthesize txtBank;
@synthesize bar;
@synthesize txtSort;
@synthesize  menu;
@synthesize pickBank;
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


-(void)viewWillAppear:(BOOL)animated{
    [txtBank setText:[valueHolder getCustomPickerValue]];
    [valueHolder setCustomPickerValue:@""];
    
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
    [valueHolder setCustomPickerPage:@"BankDet"];
    [valueHolder transit1:self.navigationController View2Show:pickBank];
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
-(IBAction)switchPage:(id)sender{
    NSMutableArray* control=[[NSMutableArray alloc]init];
    NSMutableArray* callName=[[NSMutableArray alloc]init];
    
    [control addObject:txtAcct];[callName addObject:@"Account Number"];
    [control addObject:txtBank];[callName addObject:@"Bank"];
    [control addObject:txtSort];[callName addObject:@"Sort code"];
    
    NSString* valid=[valueHolder validator:control andCallNames:callName];
    
    if (![[valid stringByReplacingOccurrencesOfString:@" " withString:@""]isEqualToString:@""]) {
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Please fill the below fields" message:valid delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        return;
    }
    
    UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Application sent!" message:@"Your loan Application has been sent to Leadway. Someone will be in touch with you soon." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    if (self.menu==nil) {
        AcctMenu* detIn=[[AcctMenu alloc]initWithNibName:@"AcctMenu" bundle:[NSBundle mainBundle]];
        self.menu=detIn;
    }
        [valueHolder popOutPages:self.navigationController View2Show:menu];
}
-(IBAction)backGround:(id)sender{
    [txtSort resignFirstResponder];
    [txtBank resignFirstResponder];
    [txtAcct resignFirstResponder];
    
}
-(IBAction)Type:(id)sender{
    [sender resignFirstResponder];
    
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

    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"SignOut" style:UIBarButtonItemStylePlain target:self action:@selector(signOut:)];
    self.navigationItem.rightBarButtonItem=btnOut;
    self.title=@"Loan Request";
    
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
