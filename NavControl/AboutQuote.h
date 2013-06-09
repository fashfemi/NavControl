//
//  AboutQuote.h
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "UrDetails.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class UrDetails;
@interface AboutQuote : UIViewController
{
    UIToolbar* bar;
    UrDetails* details;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;

}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;

@property(strong,nonatomic) UrDetails* details;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;

-(IBAction)mailUs:(id)sender;
-(IBAction)switchPage:(id)sender;
@end
