//
//  LoanRequest.h
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "DatePickerPage.h"
#import "BankDet.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class BankDet;
@class  DatePickerPage;
@interface LoanRequest : UIViewController<UIActionSheetDelegate>
{
    BankDet* bankDetails;
    UIStepper* step;
    UITextField* txtamount;
    UITextField* txtPrd;
    UITextField* disDate;
    DatePickerPage* pickDate;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    UIToolbar* bar;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;

@property (strong,nonatomic)IBOutlet     UIStepper* step;
@property(strong,nonatomic) IBOutlet UITextField* txtamount;
@property(strong,nonatomic) IBOutlet UITextField* txtPrd;
@property(strong,nonatomic)IBOutlet     UITextField* disDate;
@property(strong,nonatomic)    DatePickerPage* pickDate;
@property(strong,nonatomic)    BankDet* bankDetails;

-(IBAction)NumberFormat:(id)sender;
-(IBAction)switchPage:(id)sender;
-(IBAction)DateSelector:(id)sender;
-(IBAction)stepAction:(id)sender;
-(IBAction)backGround:(id)sender;
-(IBAction)type:(id)sender;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
