//
//  missingPaymentLastPage.h
//  NavControl
//
//  Created by faseyitan on 6/3/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "AcctMenu.h"
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class AcctMenu;
@interface missingPaymentLastPage : UIViewController<UIActionSheetDelegate>
{
    AcctMenu* actMu;
    UIToolbar* bar;
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    
    UILabel* lblDate1;
    UILabel* lblDate2;
    UILabel* lblDate3;
    UILabel* lblDate4;
    UILabel* lblDate5;
    UILabel* lblDate6;
    UILabel* lblDate7;
    
    UILabel* lblamt1;
    UILabel* lblamt2;
    UILabel* lblamt3;
    UILabel* lblamt4;
    UILabel* lblamt5;
    UILabel* lblamt6;
    UILabel* lblamt7;
    
    UILabel* lbltype1;
    UILabel* lbltype2;
    UILabel* lbltype3;
    UILabel* lbltype4;
    UILabel* lbltype5;
    UILabel* lbltype6;
    UILabel* lbltype7;
    
    UILabel* lblchannel1;
    UILabel* lblchannel2;
    UILabel* lblchannel3;
    UILabel* lblchannel4;
    UILabel* lblchannel5;
    UILabel* lblchannel6;
    UILabel* lblchannel7;
    
    UILabel* lblrec1;
    UILabel* lblrec2;
    UILabel* lblrec3;
    UILabel* lblrec4;
    UILabel* lblrec5;
    UILabel* lblrec6;
    UILabel* lblrec7;
    
    
    NSMutableArray* arrDate;
    NSMutableArray* arrAmt;
    NSMutableArray* arrType;
    NSMutableArray* arrChannel;
    NSMutableArray* arrRec;
}
@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic) IBOutlet     UIToolbar* bar;
@property(strong,nonatomic)    AcctMenu* actMu;
@property(strong,nonatomic)IBOutlet    NSMutableArray* arrDate;
@property(strong,nonatomic)IBOutlet NSMutableArray* arrAmt;
@property(strong,nonatomic) IBOutlet NSMutableArray* arrType;
@property(strong,nonatomic)IBOutlet NSMutableArray* arrChannel;
@property(strong,nonatomic) IBOutlet NSMutableArray* arrRec;


@property(strong,nonatomic) IBOutlet UILabel* lblDate1;
@property(strong,nonatomic) IBOutlet UILabel* lblDate2;
@property(strong,nonatomic) IBOutlet UILabel* lblDate3;
@property(strong,nonatomic) IBOutlet UILabel* lblDate4;
@property(strong,nonatomic) IBOutlet UILabel* lblDate5;
@property(strong,nonatomic) IBOutlet UILabel* lblDate6;
@property(strong,nonatomic) IBOutlet UILabel* lblDate7;

@property(strong,nonatomic) IBOutlet UILabel* lblamt1;
@property(strong,nonatomic) IBOutlet UILabel* lblamt2;
@property(strong,nonatomic) IBOutlet UILabel* lblamt3;
@property(strong,nonatomic) IBOutlet UILabel* lblamt4;
@property(strong,nonatomic) IBOutlet UILabel* lblamt5;
@property(strong,nonatomic) IBOutlet UILabel* lblamt6;
@property(strong,nonatomic) IBOutlet UILabel* lblamt7;

@property(strong,nonatomic) IBOutlet UILabel* lbltype1;
@property(strong,nonatomic) IBOutlet UILabel* lbltype2;
@property(strong,nonatomic) IBOutlet UILabel* lbltype3;
@property(strong,nonatomic) IBOutlet UILabel* lbltype4;
@property(strong,nonatomic) IBOutlet UILabel* lbltype5;
@property(strong,nonatomic) IBOutlet UILabel* lbltype6;
@property(strong,nonatomic) IBOutlet UILabel* lbltype7;

@property(strong,nonatomic) IBOutlet UILabel* lblchannel1;
@property(strong,nonatomic) IBOutlet UILabel* lblchannel2;
@property(strong,nonatomic) IBOutlet UILabel* lblchannel3;
@property(strong,nonatomic) IBOutlet UILabel* lblchannel4;
@property(strong,nonatomic) IBOutlet UILabel* lblchannel5;
@property(strong,nonatomic) IBOutlet UILabel* lblchannel6;
@property(strong,nonatomic) IBOutlet UILabel* lblchannel7;

@property(strong,nonatomic) IBOutlet UILabel* lblrec1;
@property(strong,nonatomic) IBOutlet UILabel* lblrec2;
@property(strong,nonatomic) IBOutlet UILabel* lblrec3;
@property(strong,nonatomic) IBOutlet UILabel* lblrec4;
@property(strong,nonatomic) IBOutlet UILabel* lblrec5;
@property(strong,nonatomic) IBOutlet UILabel* lblrec6;
@property(strong,nonatomic) IBOutlet UILabel* lblrec7;

-(IBAction)switchPage:(id)sender;


-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;

@end
