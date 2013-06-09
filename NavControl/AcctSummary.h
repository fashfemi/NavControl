//
//  AcctSummary.h
//  NavControl
//
//  Created by faseyitan on 6/2/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "Payments.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;


@class Payments;
@interface AcctSummary : UIViewController<UIActionSheetDelegate>
{
    UILabel* lblHead;
    Payments* pay;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic)IBOutlet  UILabel* lblHead;
@property(strong,nonatomic)    Payments* pay;
@property(strong,nonatomic)IBOutlet     UITabBarItem* t1;

-(IBAction)switchPage:(id)sender;
-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
