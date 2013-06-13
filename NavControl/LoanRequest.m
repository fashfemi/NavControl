//
//  LoanRequest.m
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "LoanRequest.h"

@interface LoanRequest ()

@end

@implementation LoanRequest
@synthesize step;
@synthesize txtamount;
@synthesize txtPrd;
@synthesize bar;
@synthesize disDate;
@synthesize pickDate;
@synthesize bankDetails;
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

-(IBAction)NumberFormat:(id)sender{
    [valueHolder ConvertDecimal:txtamount];
    
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
- (void)viewWillAppear:(BOOL)animated{
    disDate.text=[valueHolder getSelectedDate];
    [valueHolder setSeletedDate:@""];
}

-(IBAction)DateSelector:(id)sender{
    if (self.pickDate==nil) {
        DatePickerPage* dateIn=[[DatePickerPage alloc]initWithNibName:@"DatePickerPage" bundle:[NSBundle mainBundle]];
        self.pickDate=dateIn;
    }
    [valueHolder setDatePage:@"LoanRequest"];
    [valueHolder transit1:self.navigationController View2Show:pickDate];
}
-(IBAction)switchPage:(id)sender{
    NSMutableArray* cont=[[NSMutableArray alloc]init];
    NSMutableArray* name=[[NSMutableArray alloc]init];
    [ cont addObject:txtamount];[name addObject:@"Request Amount"];
    [cont addObject:txtPrd];    [name addObject:@"Period"];
    [cont addObject:disDate];[name addObject:@"disbursment date"];
    
    NSString* valid=[valueHolder validator:cont andCallNames:name];
    
    if (![[valid stringByReplacingOccurrencesOfString:@" " withString:@""]isEqualToString:@""]) {
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Please fill the below fields" message:valid delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        return;
    }
    if(self.bankDetails==nil){
        BankDet* detIn=[[BankDet alloc]initWithNibName:@"BankDet" bundle:[NSBundle mainBundle]];
        self.bankDetails=detIn;
        
    }
    [valueHolder transit1:self.navigationController View2Show:bankDetails];
}
-(IBAction)stepAction:(id)sender{
    txtPrd.text=[[NSString alloc]initWithFormat:@"%i",(int)step.value ];
    
}
-(IBAction)type:(id)sender{
    
    [sender resignFirstResponder];
}
-(IBAction)backGround:(id)sender{
    [txtPrd resignFirstResponder];
    [txtamount resignFirstResponder];
    
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

    if([valueHolder getLoginStatus]){
        [bar setHidden:NO];
    }
    else{
        [bar setHidden:YES];
    }
    
    
    self.title=@"Loan Request";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
