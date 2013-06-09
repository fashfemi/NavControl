//
//  MorePage2.h
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "morePage3.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"
#import "JustPicker.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class morePage3;
@class JustPicker;
@interface MorePage2 : UIViewController<UIActionSheetDelegate>
{
    UIStepper* sld;
    UITextField* txtprd;
    UITextField* txtfrq;
    morePage3* more3;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    JustPicker* pickBank;
    UILabel* lblyear;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic) IBOutlet UIStepper* sld;
@property(strong,nonatomic) IBOutlet UITextField* txtprd;
@property(strong,nonatomic) IBOutlet UITextField* txtfrq;
@property(strong,nonatomic) morePage3* more3;
@property(strong,nonatomic)   IBOutlet  UILabel* lblyear;
@property(strong,nonatomic)    JustPicker* pickBank;

-(IBAction)switchPage:(id)sender;
-(IBAction)sldAction:(id)sender;
-(IBAction)backGround:(id)sender;
-(IBAction)Type:(id)sender;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
