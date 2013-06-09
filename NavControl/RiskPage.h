//
//  RiskPage.h
//  NavControl
//
//  Created by faseyitan on 6/1/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "smsCodePage.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class smsCodePage;
@interface RiskPage : UIViewController<UIActionSheetDelegate>
{
    UISwitch* swtLife;
    UISwitch* swtCrit;
    UISwitch* swtTotal;
    
    UITextField* txtLife;
    UITextField* txtCrit;
    UITextField* txtTotal;
    UIToolbar* bar;
    smsCodePage* smsPage;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;

@property(strong,nonatomic)IBOutlet  UISwitch* swtLife;
@property(strong,nonatomic)IBOutlet  UISwitch* swtCrit;
@property(strong,nonatomic)IBOutlet  UISwitch* swtTotal;

@property(strong,nonatomic)IBOutlet UITextField* txtLife;
@property(strong,nonatomic)IBOutlet UITextField* txtCrit;
@property(strong,nonatomic)IBOutlet UITextField* txtTotal;

@property(strong,nonatomic) smsCodePage* smsPage;
-(IBAction)lifeAction:(id)sender;
-(IBAction)critAction:(id)sender;
-(IBAction)totalAction:(id)sender;


-(IBAction)backgroudTouch:(id)sender;
-(IBAction)Type:(id)sender;
-(IBAction)switch2LastPage:(id)sender;
-(IBAction)textFormat:(id)sender;
@end
