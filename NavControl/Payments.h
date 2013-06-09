//
//  Payments.h
//  NavControl
//
//  Created by faseyitan on 6/2/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MissingPayment.h"
#import "valueHolder.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class moreBottom;
@class Product;
@class AcctProducts;
@class MissingPayment;
@interface Payments : UIViewController<UIActionSheetDelegate>

{
    UISegmentedControl* seg;
    
    MissingPayment* missPay;
    UILabel* lblMin;
    UILabel* lblCur;
    UILabel* lblMax;
    UISlider* sldPay;
    UIProgressView* prog;
    
    UILabel* lblDate1;
    UILabel* lblDate2;
    UILabel* lblDate3;
    UILabel* lblDate4;
    UILabel* lblDate5;
    UILabel* lblDate6;
    
    UILabel* lblamt1;
    UILabel* lblamt2;
    UILabel* lblamt3;
    UILabel* lblamt4;
    UILabel* lblamt5;
    UILabel* lblamt6;
    
    
    UILabel* lblmode1;
    UILabel* lblmode2;
    UILabel* lblmode3;
    UILabel* lblmode4;
    UILabel* lblmode5;
    UILabel* lblmode6;
    
   
    UIToolbar* bar;
    
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;

@property(strong,nonatomic) IBOutlet UILabel* lblDate1;
@property(strong,nonatomic) IBOutlet UILabel* lblDate2;
@property(strong,nonatomic) IBOutlet UILabel* lblDate3;
@property(strong,nonatomic) IBOutlet UILabel* lblDate4;
@property(strong,nonatomic) IBOutlet UILabel* lblDate5;
@property(strong,nonatomic) IBOutlet UILabel* lblDate6;

@property(strong,nonatomic) IBOutlet UILabel* lblamt1;
@property(strong,nonatomic) IBOutlet UILabel* lblamt2;
@property(strong,nonatomic) IBOutlet UILabel* lblamt3;
@property(strong,nonatomic) IBOutlet UILabel* lblamt4;
@property(strong,nonatomic) IBOutlet UILabel* lblamt5;
@property(strong,nonatomic) IBOutlet UILabel* lblamt6;

@property(strong,nonatomic) IBOutlet UILabel* lblmode1;
@property(strong,nonatomic) IBOutlet UILabel* lblmode2;
@property(strong,nonatomic) IBOutlet UILabel* lblmode3;
@property(strong,nonatomic) IBOutlet UILabel* lblmode4;
@property(strong,nonatomic) IBOutlet UILabel* lblmode5;
@property(strong,nonatomic) IBOutlet UILabel* lblmode6;


@property(strong,nonatomic) IBOutlet     UISegmentedControl* seg;
@property(strong,nonatomic)IBOutlet UILabel* lblMin;
@property(strong,nonatomic)IBOutlet UILabel* lblCur;
@property(strong,nonatomic)IBOutlet UILabel* lblMax;
@property(strong,nonatomic)IBOutlet     UISlider* sldPay;
@property(nonatomic,strong) IBOutlet   UIProgressView* prog;
@property(strong,nonatomic)    MissingPayment* missPay;





-(IBAction)switchPage:(id)sender;
-(IBAction)switchPeriod:(id)sender;

-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
