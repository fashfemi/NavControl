//
//  AcctMenu.m
//  NavControl
//
//  Created by faseyitan on 6/2/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "AcctMenu.h"
#import "PKRevealController.h"


@interface AcctMenu ()

@end

@implementation AcctMenu
@synthesize dataArray;
@synthesize mainTable;
@synthesize actSummary;
@synthesize payment;
@synthesize more;
@synthesize bar;
@synthesize statmentPage;
@synthesize loanRequest;
@synthesize surrender;
@synthesize reinstate;
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






- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.dataArray count];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    //Number of rows it should expect should be based on the section
    NSDictionary *dictionary = [self.dataArray objectAtIndex:section];
    NSArray *array = [dictionary objectForKey:@"data"];
    return [array count];
}

/*
 - (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
 
 if(section == 0)
 return @"Section 1";
 if(section == 1)
 return @"Section 2";
 }
 
 
 - (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
 
 if(section == 1){
 return @"This is a footer";
 } else {
 return @"Empty Footer";
 }
 }
 */


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    NSDictionary *dictionary = [self.dataArray objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"data"];
    NSString *cellValue = [array objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = cellValue;
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //Get the selected country
    
    NSString *selectedCell = nil;
    NSDictionary *dictionary = [self.dataArray objectAtIndex:indexPath.section];
    NSArray *array = [dictionary objectForKey:@"data"];
    selectedCell = [array objectAtIndex:indexPath.row];
    [self.mainTable deselectRowAtIndexPath:indexPath animated:YES];
    

    // Putting back the front view on focus
    
    
    if([[selectedCell lowercaseString] isEqualToString:@"account summary"]){
    
        AcctSummary* actIn=[[AcctSummary alloc]initWithNibName:@"AcctSummary" bundle:[NSBundle mainBundle]];
        self.actSummary=actIn;
    NSString* header=[[NSString alloc]initWithFormat:@"Here's a summary of your %@",[valueHolder getAcctPlan ]];
        [self.actSummary.lblHead setText:header];
        UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:actIn];
        [self.revealController setFrontViewController:myNavController];

    }
    
    else if([[selectedCell lowercaseString] isEqualToString:@"payments"]){
            Payments* actIn=[[Payments alloc]initWithNibName:@"Payments" bundle:[NSBundle mainBundle]];
            self.payment=actIn;

        UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:actIn];
        [self.revealController setFrontViewController:myNavController];

    }
    
    else if([[selectedCell lowercaseString] isEqualToString:[@"Cover Term & Frequency change" lowercaseString]]){
            MoreCover* actIn=[[MoreCover alloc]initWithNibName:@"MoreCover" bundle:[NSBundle mainBundle]];
            self.more=actIn;
        UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:self.more];
        [self.revealController setFrontViewController:myNavController];
    }

   else if([[selectedCell lowercaseString] isEqualToString:[@"Request Statment" lowercaseString]]){
            StatementPage* actIn=[[StatementPage alloc]initWithNibName:@"StatementPage" bundle:[NSBundle mainBundle]];
            self.statmentPage=actIn;
       UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:self.statmentPage];
       [self.revealController setFrontViewController:myNavController];
    }

    else if([[selectedCell lowercaseString] isEqualToString:[@"Request Loan" lowercaseString]]){

            LoanRequest* actIn=[[LoanRequest alloc]initWithNibName:@"LoanRequest" bundle:[NSBundle mainBundle]];
            self.loanRequest=actIn;
        UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:loanRequest];
        [self.revealController setFrontViewController:myNavController];
    }
   
    
    else if([[selectedCell lowercaseString] isEqualToString:[@"Surrender Policy" lowercaseString]]){
        
        SurrenderPage* actIn=[[SurrenderPage alloc]initWithNibName:@"SurrenderPage" bundle:[NSBundle mainBundle]];
        self.surrender=actIn;
        UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:surrender];
        [self.revealController setFrontViewController:myNavController];
    }
    
   else if([[selectedCell lowercaseString] isEqualToString:[@"Reinstatement Policy" lowercaseString]]){
        
        ReinstatePol* actIn=[[ReinstatePol alloc]initWithNibName:@"ReinstatePol" bundle:[NSBundle mainBundle]];
        self.reinstate=actIn;
       UINavigationController *myNavController = [[UINavigationController alloc] initWithRootViewController:self.reinstate];
       [self.revealController setFrontViewController:myNavController];
    }
      [self.revealController showViewController:self.revealController.frontViewController];
    
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

    self.title=[valueHolder getAcctPlan];
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"SignOut" style:UIBarButtonItemStylePlain target:self action:@selector(signOut:)];
    self.navigationItem.rightBarButtonItem=btnOut;
    
 
    

   
    
    dataArray = [[NSMutableArray alloc] init];
    //First section data
    NSArray *firstItemsArray = [[NSArray alloc] initWithObjects:@"Account Summary", @"Payments", @"Cover Term & Frequency change",@"Request Statment",@"Request Loan",@"Surrender Policy",@"Reinstatement Policy",nil];
    
    NSDictionary *firstItemsArrayDict = [NSDictionary dictionaryWithObject:firstItemsArray forKey:@"data"];
    [dataArray addObject:firstItemsArrayDict];

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
