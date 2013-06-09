//
//  JustPicker.h
//  NavControl
//
//  Created by faseyitan on 6/4/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueHolder.h"
#import "BankDet.h"
#import "SurrenderPage.h"

@class BankDet;
@class SurrenderPage;
@interface JustPicker : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
{
    BankDet* bankdet;
    UIPickerView* picker;
    NSArray* data;
    SurrenderPage* surpage;
}
@property(strong,nonatomic) IBOutlet     UIPickerView* picker;
@property(strong,nonatomic) IBOutlet   NSArray* data;
@property(strong,nonatomic)    BankDet* bankdet;
@property(strong,nonatomic)     SurrenderPage* surpage;

-(IBAction)selected:(id)sender;
-(IBAction)canel:(id)sender;


@end
