//
//  moreBottom.m
//  NavControl
//
//  Created by faseyitan on 6/8/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "moreBottom.h"

@interface moreBottom ()

@end

@implementation moreBottom
@synthesize mainTable;
@synthesize dataArray;
@synthesize moreAbt;
@synthesize debt;
@synthesize cont;
@synthesize faq;
@synthesize term;
@synthesize pass;




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
    NSArray *firstItemsArray = [[NSArray alloc] initWithObjects:@"About",@"Direct Debit",@"Contact us",@"FAQs",@"Terms & Condition",@"Change Passcode",nil];
    NSDictionary *firstItemsArrayDict = [NSDictionary dictionaryWithObject:firstItemsArray forKey:@"data"];
    [dataArray addObject:firstItemsArrayDict];
    

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
    //@"About",@"Direct Debit",@"Contact us",@"FAQs",@"Terms & Condition",@"Change Passcode"
    
    
    if([selectedCell isEqualToString:@"About"]){
        if (self.moreAbt==nil) {
            moreAbout* abtIn=[[moreAbout alloc]initWithNibName:@"moreAbout" bundle:[NSBundle mainBundle]];
            self.moreAbt=abtIn;
        }
        [valueHolder transit1:self.navigationController View2Show:moreAbt];
    }
    if([selectedCell isEqualToString:@"Direct Debit"]){
      //  if (self.debt==nil) {
            DirectDebit* abtIn=[[DirectDebit alloc]initWithNibName:@"DirectDebit" bundle:[NSBundle mainBundle]];
            self.debt=abtIn;
       // }
        [valueHolder transit1:self.navigationController View2Show:debt];
    }
    
    if([selectedCell isEqualToString:@"Contact us"]){
        if (self.cont==nil) {
            ContactUs* abtIn=[[ContactUs alloc]initWithNibName:@"ContactUs" bundle:[NSBundle mainBundle]];
            self.cont=abtIn;
        }
        [valueHolder transit1:self.navigationController View2Show:cont];
    }
    
    if([selectedCell isEqualToString:@"FAQs"]){
        if (self.faq==nil) {
            FAQpage* abtIn=[[FAQpage alloc]initWithNibName:@"FAQpage" bundle:[NSBundle mainBundle]];
            self.faq=abtIn;
        }
        [valueHolder transit1:self.navigationController View2Show:faq];
    }
    if([selectedCell isEqualToString:@"Terms & Condition"]){
        if (self.term==nil) {
            Page1* abtIn=[[Page1 alloc]initWithNibName:@"Page1" bundle:[NSBundle mainBundle]];
            self.term=abtIn;
        }
        [valueHolder transit2:self.navigationController View2Show:term];
    }
    if([selectedCell isEqualToString:@"Change Passcode"]){
       // if (self.pass==nil) {
            passCodeChange* abtIn=[[passCodeChange alloc]initWithNibName:@"passCodeChange" bundle:[NSBundle mainBundle]];
            self.pass=abtIn;
       // }
        [valueHolder transit1:self.navigationController View2Show:pass];
    }
    
    
    
    
    
    
    [self.mainTable deselectRowAtIndexPath:indexPath animated:YES];
}

@end
