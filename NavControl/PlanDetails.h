//
//  PlanDetails.h
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RiskPage.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"
#import "JustPicker.h"
@class moreBottom;
@class Product;
@class AcctProducts;
@class JustPicker;
@class RiskPage;
@interface PlanDetails : UIViewController
{
    UITextField* txtSave;
    UITextField* txtPeriod;
    UITextField* txtFreq;
    RiskPage* risk;
    UIStepper* step;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    UIToolbar* bar;
    JustPicker* pickerTitle;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic) IBOutlet UITextField* txtSave;
@property(strong,nonatomic)IBOutlet UITextField* txtPeriod;
@property(strong,nonatomic)IBOutlet UITextField* txtFreq;
@property(strong,nonatomic)RiskPage* risk;
@property(strong,nonatomic) IBOutlet     UIStepper* step;
@property(strong,nonatomic)     JustPicker* pickerTitle;
-(IBAction)TextFormat:(id)sender;
-(IBAction)steper:(id)sender;
-(IBAction)swictRiskPage:(id)sender;
-(IBAction)TypeEnd:(id)sender;
-(IBAction)backgroundTouch:(id)sender;
@end
