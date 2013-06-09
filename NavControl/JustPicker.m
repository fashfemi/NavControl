//
//  JustPicker.m
//  NavControl
//
//  Created by faseyitan on 6/4/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "JustPicker.h"

@interface JustPicker ()

@end

@implementation JustPicker
@synthesize picker;
@synthesize data;
@synthesize bankdet;
@synthesize surpage;

-(IBAction)selected:(id)sender{
    NSInteger row=[picker selectedRowInComponent:0];
    NSString* select=[data objectAtIndex:row];
    [valueHolder setCustomPickerValue:select];
    [self returnPage];
}
-(IBAction)canel:(id)sender{
    
    [self returnPage];
}
-(void)returnPage{
    NSString* retPage=[valueHolder getCustomPickerPage];
    if([retPage isEqualToString:@"BankDet"]){
            BankDet* bank=[[BankDet alloc]initWithNibName:@"BankDet" bundle:[NSBundle mainBundle]];
            [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"SurrenderPage"]){
        SurrenderPage* bank=[[SurrenderPage alloc]initWithNibName:@"SurrenderPage" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"PersonalDetails"]){
        PersonalDetails* bank=[[PersonalDetails alloc]initWithNibName:@"PersonalDetails" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"MissingPaymentChannel"] || [retPage isEqualToString:@"MissingPaymentType"]){
        MissingPayment* bank=[[MissingPayment alloc]initWithNibName:@"MissingPayment" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"SurrenderPage"]){
        SurrenderPage* bank=[[SurrenderPage alloc]initWithNibName:@"SurrenderPage" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"MorePage2"]){
        MorePage2* bank=[[MorePage2 alloc]initWithNibName:@"MorePage2" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"UrDetails"]){
        UrDetails* bank=[[UrDetails alloc]initWithNibName:@"UrDetails" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"PlanDetails"]){
        PlanDetails* bank=[[PlanDetails alloc]initWithNibName:@"PlanDetails" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
    else if([retPage isEqualToString:@"DirectDebit"]){
        DirectDebit* bank=[[DirectDebit alloc]initWithNibName:@"DirectDebit" bundle:[NSBundle mainBundle]];
        [valueHolder popOutPages:self.navigationController  View2Show:bank];
    }
}
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [data objectAtIndex:row];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return [data count];
}
- (void)viewDidLoad
{
  //  NSArray* arr=[[NSArray alloc]initWithObjects:@"GTBank",@"Union Bank",@"First Bank",@"Access Bank", nil];
   // self.data=arr;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
