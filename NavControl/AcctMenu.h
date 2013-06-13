//
//  AcctMenu.h
//  NavControl
//
//  Created by faseyitan on 6/2/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "AcctSummary.h"
#import "Payments.h"
#import "MoreCover.h"
#import "StatementPage.h"
#import "LoanRequest.h"
#import "SurrenderPage.h"
#import "ReinstatePol.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"



@class moreBottom;
@class Product;
@class AcctProducts;
@class PKRevealController;

@class ReinstatePol;
@class SurrenderPage;
@class StatementPage;
@class MoreCover;
@class AcctSummary;
@class Payments;
@class LoanRequest;
@interface AcctMenu : UIViewController<UITableViewDataSource,UITableViewDelegate,UIActionSheetDelegate>
{
    UITableView *mainTable;
    NSMutableArray *dataArray;
    AcctSummary* actSummary;
    Payments* payment;
    MoreCover* more;
    StatementPage* statmentPage;
    LoanRequest* loanRequest;
    SurrenderPage* surrender;
    ReinstatePol* reinstate;
    UIToolbar* bar;
   
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property (nonatomic, strong, readwrite) PKRevealController *revealController;

@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;

@property (strong,nonatomic)IBOutlet  UITableView* mainTable;
@property(strong,nonatomic) NSMutableArray *dataArray;
@property(strong,nonatomic)    AcctSummary* actSummary;
@property(strong,nonatomic)    Payments* payment;
@property(strong,nonatomic)    MoreCover* more;
@property(strong,nonatomic)    StatementPage* statmentPage;
@property(strong,nonatomic)    LoanRequest* loanRequest;
@property(strong,nonatomic)     SurrenderPage* surrender;
@property(strong,nonatomic)     ReinstatePol* reinstate;


-(IBAction)signOut:(id)sender;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
