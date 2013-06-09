//
//  AboutQuote.m
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "AboutQuote.h"

@interface AboutQuote ()

@end

@implementation AboutQuote
@synthesize details;
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


-(IBAction)mailUs:(id)sender{
    NSString*emailAddress=[valueHolder getEmailAddress];
    NSString* mailUrl=[[NSString alloc]initWithFormat:@"mailto:%@?",emailAddress ];
//    NSString *emailInfo = @"mailto:EMAIL?cc=support@leadway.com&subject=SUBJECT";
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: mailUrl]];
}


-(void)switchPage:(id)sender{
    
   // if(self.details==nil)
    //{
        UrDetails* det=[[UrDetails alloc]initWithNibName:@"UrDetails" bundle:[NSBundle mainBundle]];
        self.details=det;
   // }
    [valueHolder transit1:self.navigationController View2Show:details];
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
