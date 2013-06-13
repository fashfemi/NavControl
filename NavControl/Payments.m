//
//  Payments.m
//  NavControl
//
//  Created by faseyitan on 6/2/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "Payments.h"

@interface Payments ()

@end

@implementation Payments
@synthesize lblCur;
@synthesize lblMax;
@synthesize lblMin;
@synthesize sldPay;
@synthesize missPay;
@synthesize prog;
@synthesize lblDate1;
@synthesize lblDate2;
@synthesize lblDate3;
@synthesize lblDate4;
@synthesize lblDate5;
@synthesize lblDate6;
@synthesize bar;
@synthesize lblamt1;
@synthesize lblamt2;
@synthesize lblamt3;
@synthesize lblamt4;
@synthesize lblamt5;
@synthesize lblamt6;

@synthesize lblmode1;
@synthesize lblmode2;
@synthesize lblmode3;
@synthesize lblmode4;
@synthesize lblmode5;
@synthesize lblmode6;
@synthesize seg;
@synthesize btmMore,btmProd,btmAcct;
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

-(IBAction)switchPeriod:(id)sender{
    if(seg.selectedSegmentIndex==0){
        lblDate1.text=@"21 Jan 2013";
        lblDate2.text=@"21 Feb 2013";
        lblDate3.text=@"21 Mar 2013";
        lblDate4.text=@"21 Apr 2013";
        lblDate5.text=@"21 May 2013";
        lblDate6.text=@"21 Jun 2013";
        
        lblmode1.text=@"Cheque";
        lblmode2.text=@"Cheque";
        lblmode3.text=@"Cheque";
        lblmode4.text=@"Cheque";
        lblmode5.text=@"Cheque";
        lblmode6.text=@"Cheque";
        
    }else{
        
        lblDate1.text=@"21 Jul 2013";
        lblDate2.text=@"21 Aug 2013";
        lblDate3.text=@"21 Sep 2013";
        lblDate4.text=@"21 Oct 2013";
        lblDate5.text=@"21 Nov 2013";
        lblDate6.text=@"21 Dec 2013";
        
        lblmode1.text=@"Cash";
        lblmode2.text=@"Cash";
        lblmode3.text=@"Cheque";
        lblmode4.text=@"Cash";
        lblmode5.text=@"Cheque";
        lblmode6.text=@"Cheque";
        
    }
    
    
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
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)switchPage:(id)sender{
    //if(self.missPay==nil){
        MissingPayment* payIn=[[MissingPayment alloc]initWithNibName:@"MissingPayment" bundle:[NSBundle mainBundle]];
        self.missPay=payIn;
   // }
    [valueHolder transit1:self.navigationController View2Show:missPay];
}


-(IBAction)signOut:(id)sender{
    UIActionSheet* askOut=[[UIActionSheet alloc]initWithTitle:@"Are you sure you want to signout?" delegate:self cancelButtonTitle:@"No" destructiveButtonTitle:@"Yes" otherButtonTitles: nil];
    [askOut showInView:self.view];
    
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==0){
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Loggin Out Account!" message:@"You have successfully Logged Out!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert show];
        [valueHolder pop2Root:self.navigationController];
    }
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

    id dummy;
    [self switchPeriod:dummy];
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"SignOut" style:UIBarButtonItemStylePlain target:self action:@selector(signOut:)];
    self.navigationItem.rightBarButtonItem=btnOut;

    
    if([valueHolder getLoginStatus]){
        [bar setHidden:NO];
    }
    else{
        [bar setHidden:YES];
    }
    
    
    self.title=@"Payment History";
    float maxVal=929560.00;
    float minVal=0.00;
    float curVal=700520.00;
    
    sldPay.maximumValue=maxVal;
    sldPay.minimumValue=minVal;
    sldPay.value=curVal;
    prog.progress=(curVal/maxVal);
    NSNumberFormatter *commas = [NSNumberFormatter new];
    commas.numberStyle = NSNumberFormatterDecimalStyle;
    NSString* strMin=[NSString stringWithFormat:@"N%@",[commas stringFromNumber:[NSNumber numberWithFloat:minVal]]];
    NSString* strMax=[NSString stringWithFormat:@"N%@",[commas stringFromNumber:[NSNumber numberWithFloat:maxVal ]]];
    NSString* strCur=[NSString stringWithFormat:@"N%@",[commas stringFromNumber:[NSNumber numberWithFloat:curVal ]]];
    
    lblMin.text=strMin;
    lblMax.text=strMax;
    lblCur.text=strCur;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
