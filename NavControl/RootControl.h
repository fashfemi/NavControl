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

@class moreBottom;
@class Product;
@class AcctProducts;
@interface RootControl : UIViewController<UIActionSheetDelegate>
{
    Product* view2;
    ContactUs* contact;
    LACAccount* acct;
    Utility* util;
    AcctProducts* acProd;

    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;

@property (strong,nonatomic) Product* view2;
@property(strong,nonatomic)ContactUs* contact;
@property(strong,nonatomic)LACAccount* acct;
@property(strong,nonatomic)Utility* util;
@property(strong,nonatomic)    AcctProducts* acProd;


-(IBAction)switchUtil:(id)sender;
-(IBAction)switchAccount:(id)sender;
-(IBAction)switchPageProduct:(id)sender;
-(IBAction)switchPageContact:(id)sender;
@end
