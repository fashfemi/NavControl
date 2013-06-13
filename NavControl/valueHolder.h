//
//  valueHolder.h
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RootControl.h"
#import "PKRevealController.h"
@interface valueHolder : NSObject
{
    
  
}


+(void)setPasscodeChange:(NSString*)val;
+(NSString*)getPasscode;

+(void)setCustomPickerPage:(NSString*)val;
+(NSString*)getCustomPickerPage;

+(void)setCustomPickerValue:(NSString*)val;
+(NSString*)getCustomPickerValue;

+(NSString*)getEmailAddress;

+(void)setSeletedDate:(NSString*)selDate;
+(NSString* )getSelectedDate;

+(void)setDatePage:(NSString* )datepagein;
+(NSString* )getDatePage;

+(void)setSelectedPlan:(NSString*)plan;
+(NSString*) getSelectedPlan;

+(void)setLoginStatus:(BOOL)status;
+(BOOL)getLoginStatus;

+(void)setAcctPlan:(NSString*)selPlan;
+(NSString*)getAcctPlan;

+(int)getLoginTimes;
+(void)setLoginTimes:(int)val;

+(void)setExpire:(BOOL)exp1;
+(BOOL)getExpire;

+(UIImage*)imgHome;

+(NSString*)validator:(NSMutableArray*)controls andCallNames:(NSMutableArray*)names;
+(void)transit1:(UINavigationController*)control View2Show:(UIViewController*)display;
+(void)transit2:(UINavigationController*)control View2Show:(UIViewController*)display;
+(void) popOutPages:(UINavigationController*)control View2Show:(UIViewController*)display;
+(void) popOutPagesBook:(UINavigationController*)control View2Show:(UIViewController*)display;
+(void) pop2Root:(UINavigationController*)control;
+(void) ConvertDecimal:(UITextField*)txt;
@end
