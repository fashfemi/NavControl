//
//  valueHolder.m
//  NavControl
//
//  Created by faseyitan on 5/31/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "valueHolder.h"

@implementation valueHolder
static NSString *selectedPlan=@"";
static int logintimes=5;
static bool expire=NO;
static UIImage* imgHome;
static NSString* AcctselectedPlan=@"";
static bool loggedIn=NO;
static NSString* datePage=@"";
static NSString* selectedDate=@"";
static NSString* pickerPage=@"";
static NSString* pickerValue=@"";




+(NSString*)getEmailAddress{
    return  @"support@leadway.com";
}


+(NSString*)validator:(NSMutableArray*)controls andCallNames:(NSMutableArray*)names{
    NSString* list=@"";
    NSString* each=@"";
    for (int i=0; i<[controls count]; i++) {
        UITextField* txt=(UITextField*)[controls objectAtIndex:i];
        if ([[txt.text stringByReplacingOccurrencesOfString:@" " withString:@""]isEqualToString:@""]) {
            each=(NSString*)[names objectAtIndex:i];
            list=[[NSString alloc]initWithFormat:@"%@ %@,",list,each];
        }
    }
    
    return  list;
}
+(void) ConvertDecimal:(UITextField*)txt{
    NSString* val=[txt.text stringByReplacingOccurrencesOfString:@"," withString:@""];
                   if(![val isEqualToString:@""]){
                       float Num=[val floatValue];
                       NSNumberFormatter* format=[NSNumberFormatter new];
                       format.numberStyle=NSNumberFormatterDecimalStyle;
                       NSString* str=[NSString stringWithFormat:@"%@",[format stringFromNumber:[NSNumber numberWithFloat:Num]]];
                       txt.text=str;
                   }
    
}


+(void)setCustomPickerPage:(NSString*)val{
    
    pickerPage=val;
}
+(NSString*)getCustomPickerPage{
    return pickerPage;
}



+(void)setCustomPickerValue:(NSString*)val{
    pickerValue=val;
    
}
+(NSString*)getCustomPickerValue{
    return pickerValue;
    
}


+(void)setSeletedDate:(NSString*)selDate{
    selectedDate=selDate;
}
+(NSString* )getSelectedDate{
    return selectedDate;
}


+(NSString*)getDatePage{
    return datePage;
    
}
+(void)setDatePage:(NSString *)datepagein{
    
    datePage=datepagein;
}

+(void)setAcctPlan:(NSString*)selPlan{
    AcctselectedPlan=selPlan;
}

+(void)setLoginStatus:(BOOL)status{
    
    loggedIn=status;
}

+(NSString*)getAcctPlan{
    NSString* splan=[[NSString alloc]initWithFormat:@"%@",AcctselectedPlan];
    return splan;
}

+(BOOL)getLoginStatus{
    return loggedIn;
}


+(UIImage*)imgHome{
    imgHome=[[UIImage alloc]initWithContentsOfFile:@"Home.png"];
    return imgHome;
}



+(void)setExpire:(BOOL)exp1{
    
    expire=exp;
}
+(BOOL)getExpire{
    return expire;
}
+(void)setLoginTimes:(int)val{
    
    logintimes=val;
}

+(int)getLoginTimes{
    int val=logintimes;
    return val;
    
}

+(void)setSelectedPlan:(NSString *)plan{
    selectedPlan=plan;
    
}

+(NSString*)getSelectedPlan{
    NSString* plan=selectedPlan;
    return plan;
}

+(void)transit1:(UINavigationController*)control View2Show:(UIViewController*)display{
    [UIView animateWithDuration:0.75
                     animations:^{
                         [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                         [control pushViewController:display animated:NO];
                         [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:control.view cache:NO];
                         
                     }];
    
}

+(void)transit2:(UINavigationController*)control View2Show:(UIViewController*)display{
    [UIView animateWithDuration:0.75
                     animations:^{
                         [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                         [control pushViewController:display animated:NO];
                         [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:control.view cache:NO];
                     }];
    
}


+(void) popOutPagesBook:(UINavigationController*)control View2Show:(UIViewController*)display{
    
    // NSArray *VCs = [control viewControllers];
    // [self.navigationController popToViewController:[VCs objectAtIndex:([VCs count] - 2)] animated:YES];
    
    [UIView animateWithDuration:0.75
                     animations:^{
                         [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                         [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown forView:control.view cache:NO];
                     }];
    for (UIViewController *controller in control.viewControllers)
    {
        if ([controller isKindOfClass:[display class]])
        {
            [control popToViewController:controller animated:YES];
            return;
        }
    }
}

+(void) popOutPages:(UINavigationController*)control View2Show:(UIViewController*)display{
    
   // NSArray *VCs = [control viewControllers];
   // [self.navigationController popToViewController:[VCs objectAtIndex:([VCs count] - 2)] animated:YES];
    
    [UIView animateWithDuration:0.75
                     animations:^{
                         [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                         [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:control.view cache:NO];
                     }];
    for (UIViewController *controller in control.viewControllers)
    {
        if ([controller isKindOfClass:[display class]])
        {
            [control popToViewController:controller animated:YES];
            return;
        }
    }
}

+(void)pop2Root:(UINavigationController*)control{
    loggedIn=NO;
    [UIView animateWithDuration:0.75
                     animations:^{
                         [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                         [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:control.view cache:NO];
                     }];
    [control popToRootViewControllerAnimated:YES];
    
}
@end
