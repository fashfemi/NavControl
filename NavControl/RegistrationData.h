//
//  RegistrationData.h
//  NavControl
//
//  Created by faseyitan on 6/7/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrationData : UIViewController
{
    
    
}


+(void)setPhoneNo:(NSString*)phone;
+(void)setEmail:(NSString*)email;
+(void)setFirstname:(NSString*)name1;
+(void)setLastname:(NSString*)name1;
+(void)setPolicyNo:(NSString*)policyNo;
+(void)settitle:(NSString*)title;
+(void)setDOB:(NSString*)dateB;


+(NSString*)getPhoneNo;
+(NSString*)getEmail;
+(NSString*)getFirstname;
+(NSString*)getLastname;
+(NSString*)getPolicyNo;
+(NSString*)gettitle;
+(NSString*)getDOB;

@end
