//
//  MissingPayment.m
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "MissingPayment.h"

@interface MissingPayment ()

@end

@implementation MissingPayment
@synthesize lastPage;
@synthesize datePage;
@synthesize txtAmount;
@synthesize bar;
@synthesize txtDate;
@synthesize txtRec;
@synthesize btmMore,btmProd,btmAcct;
@synthesize picker;
@synthesize txtChannel, txtType;
@synthesize arrAmt, arrChannel, arrDate,arrRec,arrType;

-(IBAction)AddReport:(id)sender{
    
    if ([arrDate count]>7) {
        UIAlertView* alert1=[[UIAlertView alloc]initWithTitle:@"Maximum limit reached!" message:@"Only 5 transaction can be submitted at a time!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alert1 show];
        return;
    }
    
    [arrAmt addObject:txtAmount.text];
    [arrChannel addObject:txtChannel.text];
    [arrDate addObject:txtDate.text];
    [arrRec addObject:txtRec.text];
    [arrType addObject:txtType.text];
    UIAlertView* alert2=[[UIAlertView alloc]initWithTitle:@"Record Added" message:@"The missing payment has been Added. You can Add another or click on submit" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert2 show];
    
    [txtAmount setText:@""];
    [txtChannel setText:@""];
    [txtDate setText:@""];
    [txtRec setText:@""];
    [txtType setText:@""];

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


-(IBAction)pickerChannel:(id)sender{
   // if(self.picker==nil){
        JustPicker* bankIn=[[JustPicker alloc]initWithNibName:@"JustPicker" bundle:[NSBundle mainBundle]];
        self.picker=bankIn;
  //  }
    NSArray* arr=[[NSArray alloc]initWithObjects:
                  @"Bank",
                  @"Outlet Office",
                  @"HeadQuarter",
                  nil];
    self.picker.data=arr;
    [valueHolder setCustomPickerPage:@"MissingPaymentChannel"];
    [valueHolder transit1:self.navigationController View2Show:picker];
}

-(IBAction)pickerType:(id)sender{
   // if(self.picker==nil){
        JustPicker* bankIn=[[JustPicker alloc]initWithNibName:@"JustPicker" bundle:[NSBundle mainBundle]];
        self.picker=bankIn;
  //  }
    NSArray* arr=[[NSArray alloc]initWithObjects:
                  @"Cash",
                  @"Cheque",
                  @"e-Transfer",
                  @"Direct Debit",
                 nil];
    self.picker.data=arr;
    [valueHolder setCustomPickerPage:@"MissingPaymentType"];
    [valueHolder transit1:self.navigationController View2Show:picker];
}
-(IBAction)background:(id)sender{
    [txtAmount resignFirstResponder];
    [txtDate resignFirstResponder];
    [txtRec resignFirstResponder];
    
}
-(IBAction)TypeEnd:(id)sender{
    [sender resignFirstResponder];
    
    
}
-(IBAction)TextFormat:(id)sender{
    [valueHolder ConvertDecimal:sender];
    
}
-(IBAction)switchDate:(id)sender{
    [valueHolder setDatePage:@"MissingPayment"];
    
    DatePickerPage* dPage=[[DatePickerPage alloc]initWithNibName:@"DatePickerPage" bundle:[NSBundle mainBundle]];
    
    [valueHolder transit1:self.navigationController View2Show:dPage];
    
}
- (void)viewWillAppear:(BOOL)animated{
    if(![[valueHolder getSelectedDate]isEqualToString:@""]){
    txtDate.text=[valueHolder getSelectedDate];
    [valueHolder setSeletedDate:@""];
        
        
        
    }
   
    NSString* pagename=[valueHolder getCustomPickerPage];
    NSString* val=[valueHolder getCustomPickerValue];
    if([pagename isEqualToString:@"MissingPaymentType"]&& ![val isEqualToString:@""]){
        txtType.text=[valueHolder getCustomPickerValue];
        [valueHolder setCustomPickerValue:@""];
    
    }
    else if([pagename isEqualToString:@"MissingPaymentChannel"]&& ![val isEqualToString:@""]){
        txtChannel.text=[valueHolder getCustomPickerValue];
        [valueHolder setCustomPickerValue:@""];
    
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
-(IBAction)switchPage:(id)sender{
    //if (self.lastPage==nil) {
    NSMutableArray* control=[[NSMutableArray alloc]init];
    NSMutableArray* callName=[[NSMutableArray alloc]init];
    
    [control addObject:txtAmount];[callName addObject:@"Amount paid"];
    [control addObject:txtChannel];[callName addObject:@"Payment channel"];
    [control addObject:txtDate];[callName addObject:@"Payment date"];
    [control addObject:txtType];[callName addObject:@"Payment type"];
    
    [valueHolder validator:control andCallNames:callName];
        missingPaymentLastPage* lastIn=[[missingPaymentLastPage alloc]initWithNibName:@"missingPaymentLastPage" bundle:[NSBundle mainBundle]];
        self.lastPage=lastIn;
   // }
    self.lastPage.arrAmt=arrAmt;
    self.lastPage.arrChannel=arrChannel;
    self.lastPage.arrDate=arrDate;
    self.lastPage.arrRec=arrRec;
    self.lastPage.arrType=arrType;

    [valueHolder transit1:self.navigationController View2Show:lastPage];
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

    self.title=@"Missing Payment";
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"SignOut" style:UIBarButtonItemStylePlain target:self action:@selector(signOut:)];
    self.navigationItem.rightBarButtonItem=btnOut;
    arrAmt =[[NSMutableArray alloc]init];
    arrChannel=[[NSMutableArray alloc]init];
    arrDate=[[NSMutableArray alloc]init];
    arrRec=[[NSMutableArray alloc]init];
    arrType=[[NSMutableArray alloc]init];
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
