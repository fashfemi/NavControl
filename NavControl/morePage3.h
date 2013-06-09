//
//  morePage3.h
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "moreFinalpage.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class moreFinalpage;
@interface morePage3 : UIViewController<UIActionSheetDelegate>
{
    moreFinalpage* page;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic)    moreFinalpage* page;


-(IBAction)switchPage:(id)sender;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
