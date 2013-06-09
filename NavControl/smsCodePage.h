//
//  smsCodePage.h
//  NavControl
//
//  Created by faseyitan on 6/1/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuotePage.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class QuotePage;
@interface smsCodePage : UIViewController<UIActionSheetDelegate>
{
    UITextField* txtCode;
    QuotePage* quoteP;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    UIToolbar* bar;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property (strong,nonatomic)IBOutlet    UITextField* txtCode;
@property(strong,nonatomic) QuotePage* quoteP;


-(IBAction)backGroud:(id)sender;
-(IBAction)Type:(id)sender;
-(IBAction)resendQuote:(id)sender;
-(IBAction)switchQuotePage:(id)sender;

@end
