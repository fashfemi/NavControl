//
//  BankDet.h
//  NavControl
//
//  Created by faseyitan on 6/4/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "AcctMenu.h"
#import "JustPicker.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;

@class  AcctMenu;
@class JustPicker;
@interface BankDet : UIViewController<UIActionSheetDelegate>
{
    UITextField* txtBank;
    UITextField* txtSort;
    UITextField* txtAcct;
    JustPicker* pickBank;
    AcctMenu* menu;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    UIToolbar* bar;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic) IBOutlet     UITextField* txtBank;
@property(strong,nonatomic) IBOutlet UITextField* txtSort;
@property(strong,nonatomic) IBOutlet UITextField* txtAcct;
@property(strong,nonatomic)    AcctMenu* menu;
@property(strong,nonatomic)    JustPicker* pickBank;

-(IBAction)switchPage:(id)sender;
-(IBAction)backGround:(id)sender;
-(IBAction)Type:(id)sender;
-(IBAction)picker:(id)sender;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;


@end
