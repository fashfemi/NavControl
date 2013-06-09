//
//  MissingPayment.h
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "missingPaymentLastPage.h"
#import "DatePickerPage.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"
#import "JustPicker.h"
@class moreBottom;
@class Product;
@class AcctProducts;
@class missingPaymentLastPage;
@class DatePickerPage;
@class  JustPicker;
@interface MissingPayment : UIViewController<UIActionSheetDelegate>
{
    JustPicker* picker;
    missingPaymentLastPage* lastPage;
    DatePickerPage* datePage;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    
    NSMutableArray* arrDate;
    NSMutableArray* arrAmt;
    NSMutableArray* arrType;
    NSMutableArray* arrChannel;
    NSMutableArray* arrRec;
    
    
    UITextField* txtType;
    UITextField* txtChannel;
    UITextField* txtDate;
    UITextField* txtAmount;
    UITextField* txtRec;
    UIToolbar* bar;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic)    missingPaymentLastPage* lastPage;
@property(strong,nonatomic)    DatePickerPage* datePage;
@property(strong,nonatomic) IBOutlet UITextField* txtDate;
@property(strong,nonatomic) IBOutlet UITextField* txtAmount;
@property(strong,nonatomic) IBOutlet UITextField* txtRec;
@property(strong,nonatomic)    JustPicker* picker;
@property(strong,nonatomic) IBOutlet   UITextField* txtType;
@property(strong,nonatomic) IBOutlet UITextField* txtChannel;
@property(strong,nonatomic)IBOutlet    NSMutableArray* arrDate;
@property(strong,nonatomic)IBOutlet NSMutableArray* arrAmt;
@property(strong,nonatomic) IBOutlet NSMutableArray* arrType;
@property(strong,nonatomic)IBOutlet NSMutableArray* arrChannel;
@property(strong,nonatomic) IBOutlet NSMutableArray* arrRec;



-(IBAction)AddReport:(id)sender;
-(IBAction)switchDate:(id)sender;
-(IBAction)switchPage:(id)sender;
-(IBAction)background:(id)sender;
-(IBAction)TypeEnd:(id)sender;
-(IBAction)TextFormat:(id)sender;
-(IBAction)pickerChannel:(id)sender;
-(IBAction)pickerType:(id)sender;
-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;


@end
