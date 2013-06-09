//
//  DirectDebit.h
//  NavControl
//
//  Created by faseyitan on 6/7/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "moreBottom.h"
#import "Product.h"
#import "AcctProducts.h"
#import "JustPicker.h"
#import "moreBottom.h"

@class moreBottom;
@class Product;
@class AcctProducts;
@class JustPicker;
@interface DirectDebit : UIViewController<UIActionSheetDelegate>
{
    moreBottom* btmMore;
    Product* btmProd;
    AcctProducts* btmAcct;
    
    UITextField* txtbank;
    UITextField* txtsortcode;
    UITextField* txtAcct;

}

@property(strong,nonatomic)    moreBottom* btmMore;
@property(strong,nonatomic)   Product* btmProd;
@property(strong,nonatomic)   AcctProducts* btmAcct;
@property(strong,nonatomic)    JustPicker* pickBank;

@property(strong,nonatomic) IBOutlet UITextField* txtbank;
@property(strong,nonatomic) IBOutlet UITextField* txtsortcode;
@property(strong,nonatomic) IBOutlet UITextField* txtAcct;


-(IBAction)switchPage:(id)sender;
-(IBAction)typeEnd:(id)sender;
-(IBAction)backGround:(id)sender;
-(IBAction)picker:(id)sender;
-(IBAction)Prod:(id)sender;
-(IBAction)myAcct:(id)sender;
-(IBAction)moreMenu:(id)sender;


@end
