//
//  View2.h
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AboutQuote.h"

#import "valueHolder.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class AboutQuote;
@interface Product : UIViewController <UITableViewDelegate, UITableViewDataSource,UIActionSheetDelegate>
{
    UITableView *mainTable;
    NSMutableArray *dataArray;
    AboutQuote* AboutQ;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
   
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;

@property (strong,nonatomic)IBOutlet  UITableView* mainTable;
@property(strong,nonatomic) NSMutableArray *dataArray;
@property(strong,nonatomic) AboutQuote* AboutQ;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;


@end
