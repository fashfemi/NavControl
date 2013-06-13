//
//  moreBottom.h
//  NavControl
//
//  Created by faseyitan on 6/8/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "moreAbout.h"
#import "DirectDebit.h"
#import "ContactUs.h"
#import "FAQpage.h"
#import "Page1.h"
#import "passCodeChange.h"

@class passCodeChange;
@class Page1;
@class FAQpage;
@class ContactUs;
@class DirectDebit;
@class moreAbout;
@class moreBottom;
@class Product;
@class AcctProducts;
@interface moreBottom : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    moreAbout* moreAbt;
    UITableView *mainTable;
    NSMutableArray *dataArray;
    DirectDebit* debt;
    ContactUs* cont;
    FAQpage* faq;
    Page1* term;
    passCodeChange* pass;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;

@property (strong,nonatomic)IBOutlet  UITableView* mainTable;
@property(strong,nonatomic) NSMutableArray *dataArray;

@property(strong,nonatomic)    moreAbout* moreAbt;
@property(strong,nonatomic)    DirectDebit* debt;
@property(strong,nonatomic)    ContactUs* cont;
@property(strong,nonatomic)     FAQpage* faq;
@property(strong,nonatomic)     Page1* term;
@property(strong,nonatomic)     passCodeChange* pass;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;


@end
