//
//  passCodeChange3.h
//  NavControl
//
//  Created by faseyitan on 6/7/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "valueHolder.h"
#import "moreBottom.h"

@class moreBottom;
@interface passCodeChange3 : UIViewController<UIActionSheetDelegate>
{
    moreBottom* change2;
    
    UITextField* txt1;
    UITextField* txt2;
    UITextField* txt3;
    UITextField* txt4;
    UITextField* txt5;

    NSString* strPrevPage;
    
}
@property(strong,nonatomic) IBOutlet    NSString* strPrevPage;
@property(strong,nonatomic) IBOutlet UITextField* txt1;
@property(strong,nonatomic) IBOutlet UITextField* txt2;
@property(strong,nonatomic) IBOutlet UITextField* txt3;
@property(strong,nonatomic) IBOutlet UITextField* txt4;
@property(strong,nonatomic) IBOutlet UITextField* txt5;

@property(strong,nonatomic)    moreBottom* change2;

-(IBAction)Register:(id)sender;
-(IBAction)textType1:(UITextField*)sender;
-(IBAction)textType2:(UITextField*)sender;
-(IBAction)textType3:(UITextField*)sender;
-(IBAction)textType4:(UITextField*)sender;
-(IBAction)textType5:(UITextField*)sender;

-(IBAction)backgroundAction:(id)sender;

@end
