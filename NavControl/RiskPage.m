//
//  RiskPage.m
//  NavControl
//
//  Created by faseyitan on 6/1/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "RiskPage.h"

@interface RiskPage ()

@end

@implementation RiskPage
@synthesize swtCrit;
@synthesize swtLife;
@synthesize swtTotal;
@synthesize smsPage;
@synthesize bar;
@synthesize txtCrit;
@synthesize txtLife;
@synthesize txtTotal;
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




-(IBAction)backgroudTouch:(id)sender{
    [txtTotal resignFirstResponder];
    [txtLife resignFirstResponder];
    [txtCrit resignFirstResponder];
}
-(IBAction)Type:(id)sender{
    [sender resignFirstResponder];
}

-(IBAction)lifeAction:(id)sender{
    
    if(swtLife.isOn){
        [txtLife setEnabled:YES];
        txtLife.text=@"";
    }
    else{
        [txtLife setEnabled:NO];
        txtLife.text=@"";
    }
}
-(IBAction)critAction:(id)sender{
    
    if(swtCrit.isOn){
        [txtCrit setEnabled:YES];
        txtCrit.text=@"";
    }
    else{
        [txtCrit setEnabled:NO];
        txtCrit.text=@"";
    }
}
-(IBAction)totalAction:(id)sender{
    
    if(swtTotal.isOn){
        [txtTotal setEnabled:YES];
        txtTotal.text=@"";
    }
    else{
        [txtTotal setEnabled:NO];
        txtTotal.text=@"";
    }
}
-(IBAction)textFormat:(id)sender{
    [valueHolder ConvertDecimal:sender];
}

-(IBAction)switch2LastPage:(id)sender{
    UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Code sent!" message:@"A verfication code has been sent to your phone. Please enter code on the next screen" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    //if(self.smsPage==nil){
        smsCodePage* smsIn=[[smsCodePage alloc]initWithNibName:@"smsCodePage" bundle:[NSBundle mainBundle]];
        smsPage=smsIn;
  //  }
        [valueHolder transit1:self.navigationController View2Show:smsPage];
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
    
    
    self.title=@"Risk Details";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
