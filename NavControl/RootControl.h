//
//  RootControl.h
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Product.h"
#import "ContactUs.h"
#import "LACAccount.h"
#import "Utility.h"
#import "valueHolder.h"
#import "AcctProducts.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"
#import "LifefitService.h"

@class TestMenu;
@class moreBottom;
@class Product;
@class AcctProducts;
@class Utility;
@interface RootControl : UIViewController<UIActionSheetDelegate>
{
    Product* view2;
    ContactUs* contact;
    LACAccount* acct;
    Utility* util;
    AcctProducts* acProd;
    UILabel* lbl;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) TestMenu* test;
@property (strong,nonatomic) Product* view2;
@property(strong,nonatomic)ContactUs* contact;
@property(strong,nonatomic)LACAccount* acct;
@property(strong,nonatomic)Utility* util;
@property(strong,nonatomic)    AcctProducts* acProd;

@property(strong,nonatomic)IBOutlet UILabel* lbl;
-(IBAction)switchUtil:(id)sender;
-(IBAction)switchAccount:(id)sender;
-(IBAction)switchPageProduct:(id)sender;
-(IBAction)switchPageContact:(id)sender;

-(IBAction)test:(id)sender;
@end
