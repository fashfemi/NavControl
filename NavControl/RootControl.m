//
//  RootControl.m
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "RootControl.h"

@interface RootControl ()

@end

@implementation RootControl
@synthesize view2;
@synthesize contact;
@synthesize acct;
@synthesize util;
@synthesize test;
@synthesize acProd;
@synthesize btmMore,btmProd,btmAcct;
@synthesize lbl;
-(void) test:(id)sender{
    LifefitBinding* binder=[[LifefitService LifefitBinding]initWithAddress:@"http://www.webqa.fitltd.com/lwyapp/lifefit/soap?wsdl"];
    binder.authPassword=@"mobapp2";
    binder.authUsername=@"456549C5A2R";
    
    tns1_LoginData* log=[[tns1_LoginData alloc]init];
    log.UserId=@"mobapp";
    log.Password=@"321357987";
    
    tns1_QuoteCoverageData* quoteData=[[tns1_QuoteCoverageData alloc]init];
    quoteData.FaceAmount= [[NSNumber alloc]initWithDouble:93330];
    quoteData.PremiumAmount=[[NSNumber alloc]initWithDouble:8900];
    quoteData.ProductCode=@"RSP";
    
    
    tns1_ClientData* clientData=[[tns1_ClientData alloc]init];
    clientData.IsCompany=NO;
    clientData.BirthDate=[NSDate new];
    clientData.Email=@"ponle@test.ng";
    clientData.EmployerName=@"My Name";
    clientData.Title=@"Femi";
    clientData.MobilePhoneNo=@"080898687575";
    
    tns1_QuoteDataRequest* newQuote=[[tns1_QuoteDataRequest alloc]init];
    newQuote.AgentNo=@"603";
    newQuote.MaturityYears=[[NSNumber alloc]initWithDouble:10];
    newQuote.PremiumFrequency=@"M";
    newQuote.Login=log;
    newQuote.Owner=clientData;
    [newQuote.CoverageData addObject:quoteData];
    
    LifefitBindingResponse* cal=[binder CalculateQuoteUsingQuoteData:newQuote];
    
    tns1_QuoteDataResponse* response=(tns1_QuoteDataResponse*)cal;
    NSString* vv=response.QuoteNo;
   // lbl.text=vv;
    
    
}

-(IBAction)Prod:(id)sender{
  //  if (self.btmProd==nil) {
        Product* detin=[[Product alloc]initWithNibName:@"Product" bundle:[NSBundle mainBundle]];
        self.btmProd=detin;
  //  }
    [valueHolder transit1:self.navigationController View2Show:btmProd];
}
-(IBAction)myAcct:(id)sender{
   // if (self.btmAcct==nil) {
        AcctProducts* detIn=[[AcctProducts alloc]initWithNibName:@"AcctProducts" bundle:[NSBundle mainBundle]];
        self.btmAcct=detIn;
   // }
    [valueHolder transit1:self.navigationController View2Show:btmAcct];
}
-(IBAction)moreMenu:(id)sender{
   // if (self.btmMore==nil) {
        moreBottom* detIn=[[moreBottom alloc]initWithNibName:@"moreBottom" bundle:[NSBundle mainBundle]];
        self.btmMore=detIn;
  //  }
    [valueHolder transit1:self.navigationController View2Show:btmMore];
}

-(IBAction)switchUtil:(id)sender{
   
   // if (self.util==nil) {
        Utility* utilin=[[Utility alloc]initWithNibName:@"Utility" bundle:[NSBundle mainBundle]];
        self.util=utilin;
        
  //  }
    // self.navigationController.title=@"Utility";
       [valueHolder transit2:self.navigationController View2Show:util];

}

-(IBAction)switchAccount:(id)sender{
    if ([valueHolder getExpire]) {
        UIAlertView* alert=[[UIAlertView alloc]initWithTitle:@"Login Expired" message:@"You can not Login again today !" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];

        [alert show];
        return;
    }
    
   
    if([valueHolder getLoginStatus]){
       // if(self.acProd==nil){
            AcctProducts* actProdIn=[[AcctProducts alloc]initWithNibName:@"AcctProducts" bundle:[NSBundle mainBundle]];
            self.acProd=actProdIn;
            
       // }
        
        [valueHolder transit1:self.navigationController View2Show:acProd];
        
    }
    else{
        
        //if (self.acct==nil) {
            LACAccount* actin=[[LACAccount alloc]initWithNibName:@"LACAccount" bundle:[NSBundle mainBundle]];
            self.acct=actin;
            
       // }
        //[valueHolder setLoginStatus:YES];
    [valueHolder transit1:self.navigationController View2Show:acct];
    }
}

-(IBAction)switchPageProduct:(id)sender
{
    
    if (self.view2==nil) {
        Product *viewtest=[[Product alloc]initWithNibName:@"Product" bundle:[NSBundle mainBundle]];
        self.view2=viewtest;
    }
    
    [valueHolder transit1:self.navigationController View2Show:view2];
    //[self.navigationController pushViewController:self.view2 animated:YES];
}

-(IBAction)switchPageContact:(id)sender
{

    
    if (self.contact==nil) {
        ContactUs *viewtest=[[ContactUs alloc]initWithNibName:@"ContactUs" bundle:[NSBundle mainBundle]];
        self.contact=viewtest;
    }
     self.navigationController.title=@"Contact Us";
    [valueHolder transit2:self.navigationController View2Show:contact];
    
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
    

    
    
    [self.navigationItem setHidesBackButton:YES animated:YES];

    self.title=@"LAC Life App";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
