//
//  smsCodePage.m
//  NavControl
//
//  Created by faseyitan on 6/1/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "smsCodePage.h"

@interface smsCodePage ()

@end

@implementation smsCodePage
@synthesize txtCode;
@synthesize quoteP;
@synthesize bar;
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

-(IBAction)switchQuotePage:(id)sender{
        QuotePage* quoteIn=[[QuotePage alloc]initWithNibName:@"QuotePage" bundle:[NSBundle mainBundle]];
        self.quoteP=quoteIn;
    
    [valueHolder transit1:self.navigationController View2Show:quoteP];
}
-(IBAction)resendQuote:(id)sender{
    UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Code sent!" message:@"Another verfication code has been sent to your phone" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    
}


-(IBAction)backGroud:(id)sender{
    [txtCode resignFirstResponder];
}

-(IBAction)Type:(id)sender{
    [txtCode resignFirstResponder];
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
    self.title=@"sms Code Verification";
    
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
