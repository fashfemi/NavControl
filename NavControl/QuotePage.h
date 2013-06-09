//
//  QuotePage.h
//  NavControl
//
//  Created by faseyitan on 6/1/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "Product.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class  Product;
@interface QuotePage : UIViewController<UIActionSheetDelegate>
{
    
    UILabel* lblPlan;
    Product* prod;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    UIToolbar* bar;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic)IBOutlet     UILabel* lblPlan;
@property(strong,nonatomic)    Product* prods;

-(IBAction)sendEmail:(id)sender;
@end
