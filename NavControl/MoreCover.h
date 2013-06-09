//
//  MoreCover.h
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "MorePage2.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class MorePage2;
@interface MoreCover : UIViewController<UIActionSheetDelegate>
{
    UITextField* txtCritical;
    UITextField* txtTotal;
    MorePage2* page2;
    UISwitch* swtCri;
    UISwitch* swtTot;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic) IBOutlet    UITextField* txtCritical;
@property(strong,nonatomic) IBOutlet  UITextField* txtTotal;
@property(strong,nonatomic) IBOutlet UISwitch* swtCri;
@property(strong,nonatomic) IBOutlet UISwitch* swtTot;
@property(strong,nonatomic)     MorePage2* page2;

-(IBAction)type:(id)sender;
-(IBAction)backGround:(id)sender;
-(IBAction)switchPage:(id)sender;
-(IBAction)swtCritcal:(id)sender;
-(IBAction)swtTotal:(id)sender;
-(IBAction)textFomat:(id)sender;


-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
