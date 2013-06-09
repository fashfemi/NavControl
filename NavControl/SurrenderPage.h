//
//  SurrenderPage.h
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
@class AcctMenu;
@class JustPicker;
@interface SurrenderPage : UIViewController<UIActionSheetDelegate>
{
    JustPicker* pickBank;
    AcctMenu* menu;
    UILabel* lblHeader;
    UITextField* txtBank;
    UITextField* txtSort;
    UITextField* txtAcct;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic) IBOutlet UILabel* lblHeader;
@property(strong,nonatomic) IBOutlet UITextField* txtBank;
@property(strong,nonatomic) IBOutlet UITextField* txtSort;
@property(strong,nonatomic) IBOutlet UITextField* txtAcct;
@property(strong,nonatomic)    AcctMenu* menu;
@property(strong,nonatomic)     JustPicker* pickBank;

-(IBAction)picker:(id)sender;
-(IBAction)backGroud:(id)sender;
-(IBAction)Type:(id)sender;
-(IBAction)swicthPage:(id)sender;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
