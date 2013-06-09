//
//  missingPaymentLastPage.m
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "missingPaymentLastPage.h"

@interface missingPaymentLastPage ()

@end

@implementation missingPaymentLastPage

@synthesize  lblDate1;
@synthesize  lblDate2;
@synthesize  lblDate3;
@synthesize  lblDate4;
@synthesize  lblDate5;
@synthesize  lblDate6;
@synthesize  lblDate7;

@synthesize  lblamt1;
@synthesize  lblamt2;
@synthesize  lblamt3;
@synthesize  lblamt4;
@synthesize  lblamt5;
@synthesize  lblamt6;
@synthesize  lblamt7;

@synthesize  lbltype1;
@synthesize  lbltype2;
@synthesize  lbltype3;
@synthesize  lbltype4;
@synthesize  lbltype5;
@synthesize  lbltype6;
@synthesize  lbltype7;

@synthesize  lblchannel1;
@synthesize  lblchannel2;
@synthesize  lblchannel3;
@synthesize  lblchannel4;
@synthesize  lblchannel5;
@synthesize  lblchannel6;
@synthesize  lblchannel7;

@synthesize  lblrec1;
@synthesize  lblrec2;
@synthesize  lblrec3;
@synthesize  lblrec4;
@synthesize  lblrec5;
@synthesize  lblrec6;
@synthesize  lblrec7;

@synthesize arrAmt, arrChannel, arrDate,arrRec,arrType;
@synthesize actMu;
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

-(IBAction)switchPage:(id)sender{
    if(self.actMu==nil){
        AcctMenu* Menu=[[AcctMenu alloc]initWithNibName:@"" bundle:[NSBundle mainBundle]];
        self.actMu=Menu;
    }
    [valueHolder popOutPages:self.navigationController View2Show:actMu];
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
-(void)viewWillAppear:(BOOL)animated{
    [self EmptyLabels];
    
    NSMutableArray* allDates=[[NSMutableArray alloc]init];
    NSMutableArray* allAmt=[[NSMutableArray alloc]init];
    NSMutableArray* allType=[[NSMutableArray alloc]init];
    NSMutableArray* allChannel=[[NSMutableArray alloc]init];
    NSMutableArray* allrec=[[NSMutableArray alloc]init];
    
    [allrec addObject:lblrec1];
    [allrec addObject:lblrec2];
    [allrec addObject:lblrec3];
    [allrec addObject:lblrec4];
    [allrec addObject:lblrec5];
    [allrec addObject:lblrec6];
    [allrec addObject:lblrec7];
    
    
    [allChannel addObject:lblchannel1];
    [allChannel addObject:lblchannel2];
    [allChannel addObject:lblchannel3];
    [allChannel addObject:lblchannel4];
    [allChannel addObject:lblchannel5];
    [allChannel addObject:lblchannel6];
    [allChannel addObject:lblchannel7];
    
    
    [allType addObject:lbltype1];
    [allType addObject:lbltype2];
    [allType addObject:lbltype3];
    [allType addObject:lbltype4];
    [allType addObject:lbltype5];
    [allType addObject:lbltype6];
    [allType addObject:lbltype7];
    
    [allDates addObject:lblDate1];
    [allDates addObject:lblDate2];
    [allDates addObject:lblDate3];
    [allDates addObject:lblDate4];
    [allDates addObject:lblDate5];
    [allDates addObject:lblDate6];
    [allDates addObject:lblDate7];
    
    [allAmt addObject:lblamt1];
    [allAmt addObject:lblamt2];
    [allAmt addObject:lblamt3];
    [allAmt addObject:lblamt4];
    [allAmt addObject:lblamt5];
    [allAmt addObject:lblamt6];
    [allAmt addObject:lblamt7];
    
   
    
    for(int i=0;i<[arrDate count];i++){
        UILabel* datez=(UILabel*)[allDates objectAtIndex:i];
        datez.text=[arrDate objectAtIndex:i];
       
        UILabel* amtz=(UILabel*)[allAmt objectAtIndex:i];
        amtz.text=[[NSString alloc]initWithFormat:@"%@", [arrAmt objectAtIndex:i]];
        
        UILabel* typez=(UILabel*)[allType objectAtIndex:i];
        typez.text=[arrType objectAtIndex:i];
        
        UILabel* chan=(UILabel*)[allChannel objectAtIndex:i];
        chan.text=[arrChannel objectAtIndex:i];
        
        UILabel* recz=(UILabel*)[allrec objectAtIndex:i];
        recz.text=[arrRec objectAtIndex:i];
        
    }

    
}
- (void)viewDidLoad
{
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"SignOut" style:UIBarButtonItemStylePlain target:self action:@selector(signOut:)];
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
-(void)EmptyLabels{
    
    lblDate1.text=@"";
    lblDate2.text=@"";
    lblDate3.text=@"";
    lblDate4.text=@"";
    lblDate5.text=@"";
    lblDate6.text=@"";
    lblDate7.text=@"";
    
    lblamt1.text=@"";
    lblamt2.text=@"";
    lblamt3.text=@"";
    lblamt4.text=@"";
    lblamt5.text=@"";
    lblamt6.text=@"";
    lblamt7.text=@"";
    
    lbltype1.text=@"";
    lbltype2.text=@"";
    lbltype3.text=@"";
    lbltype4.text=@"";
    lbltype5.text=@"";
    lbltype6.text=@"";
    lbltype7.text=@"";
    
    lblchannel1.text=@"";
    lblchannel2.text=@"";
    lblchannel3.text=@"";
    lblchannel4.text=@"";
    lblchannel5.text=@"";
    lblchannel6.text=@"";
    lblchannel7.text=@"";
    
    lblrec1.text=@"";
    lblrec2.text=@"";
    lblrec3.text=@"";
    lblrec4.text=@"";
    lblrec5.text=@"";
    lblrec6.text=@"";
    lblrec7.text=@"";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
