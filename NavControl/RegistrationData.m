//
//  RegistrationData.m
//  NavControl
//
//  Created by faseyitan on 6/7/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "RegistrationData.h"

@interface RegistrationData ()

@end

@implementation RegistrationData
static NSString* title=@"";
static NSString* firstName=@"";
static NSString* lastName=@"";
static NSString* email=@"";
static NSString* phone=@"";
static NSString* policy=@"";
static NSString* DateOfBirth=@"";

+(void)setDOB:(NSString*)dateB{
    DateOfBirth=dateB;
}



+(void)setPhoneNo:(NSString*)phone4rm{
    
    phone=phone4rm;
}
+(void)setEmail:(NSString*)email4rm{
    email=email4rm;
    
}
+(void)setFirstname:(NSString*)name1{
    firstName=name1;
    
}
+(void)setLastname:(NSString*)name1{
    lastName=name1;
}
+(void)setPolicyNo:(NSString*)policyNo{
    policy=policyNo;
    
}
+(void)settitle:(NSString*)title4rm{
    title=title4rm;
}
+(NSString*)getDOB{
    return  DateOfBirth;
}

+(NSString*)getPhoneNo{
    return phone;
}
+(NSString*)getEmail{
    return email;
}
+(NSString*)getFirstname{
    return firstName;
}
+(NSString*)getLastname{
    return lastName;
}
+(NSString*)getPolicyNo{
    return policy;
}
+(NSString*)gettitle{
    return title;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
