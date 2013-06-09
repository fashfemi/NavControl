//
//  QuotePage.m
//  NavControl
//
//  Created by faseyitan on 6/1/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "QuotePage.h"

@interface QuotePage ()

@end

@implementation QuotePage
@synthesize lblPlan;
@synthesize prods;
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

-(IBAction)sendEmail:(id)sender{
    UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Quote sent!" message:@"A copy of this Quote has been sent to your email address" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
    [valueHolder pop2Root:self.navigationController];
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
    lblPlan.text=[valueHolder getSelectedPlan];
    
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
