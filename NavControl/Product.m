//
//  View2.m
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "Product.h"

@interface Product ()

@end

@implementation Product

@synthesize mainTable;
@synthesize dataArray;
@synthesize AboutQ;
@synthesize bar;
@synthesize btmMore,btmProd,btmAcct;


-(IBAction)Prod:(id)sender{
    /*if (self.btmProd==nil) {
        Product* detin=[[Product alloc]initWithNibName:@"Product" bundle:[NSBundle mainBundle]];
        self.btmProd=detin;
    }
    [valueHolder transit1:self.navigationController View2Show:btmProd];
     */
    return;
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
    dataArray = [[NSMutableArray alloc] init];
    
    //First section data
    NSArray *firstItemsArray = [[NSArray alloc] initWithObjects:@"Leadway Savings Plan", @"Leadway Target Plan", @"Educational Protection Plan",@"Educational Savings Plan",@"Family Benfit Plan",@"Comfort 5",@"Educational Target Plan",@"Leadway Mortgage Plan",@"Personal Savings Plan",nil];
    NSDictionary *firstItemsArrayDict = [NSDictionary dictionaryWithObject:firstItemsArray forKey:@"data"];
    [dataArray addObject:firstItemsArrayDict];
    
   
    
    //Second section data
    //NSArray *secondItemsArray = [[NSArray alloc] initWithObjects:@"Item 4", @"Item 5", @"Item 6", @"Last Item", nil];
   // NSDictionary *secondItemsArrayDict = [NSDictionary dictionaryWithObject:secondItemsArray forKey:@"data"];
    //[dataArray addObject:secondItemsArrayDict];
   
    self.title=@"Products";
    
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
    
    if(self.AboutQ==nil){
        AboutQuote* AboutNew=[[AboutQuote alloc]initWithNibName:@"AboutQuote" bundle:[NSBundle mainBundle]];
        self.AboutQ=AboutNew;
    }
    [valueHolder setSelectedPlan:selectedCell];
    [valueHolder transit1:self.navigationController View2Show:AboutQ];
    AboutQ.title=selectedCell;
    [self.mainTable deselectRowAtIndexPath:indexPath animated:YES];
}


@end
