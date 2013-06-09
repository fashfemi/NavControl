//
//  AcctProducts.h
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "AcctMenu.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class AcctMenu;
@interface AcctProducts : UIViewController<UITableViewDataSource,UITableViewDelegate,UIActionSheetDelegate>
{
    UITableView *mainTable;
    NSMutableArray *dataArray;
    AcctMenu* actMenu;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic) AcctMenu* actMenu;


-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;


@property (strong,nonatomic)IBOutlet  UITableView* mainTable;
@property(strong,nonatomic) NSMutableArray *dataArray;

-(IBAction)signOut:(id)sender;


-(IBAction)moreMenu:(id)sender;

@end
