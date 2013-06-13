//
//  FAQpage.h
//  NavControl
//
//  Created by faseyitan on 6/7/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@interface FAQpage : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *mainTable;
    NSMutableArray *dataArray;
    
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}

@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;

@property (strong,nonatomic)IBOutlet  UITableView* mainTable;
@property(strong,nonatomic) NSMutableArray *dataArray;


-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
