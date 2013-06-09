//
//  ContactUs.m
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "ContactUs.h"

@interface ContactUs ()

@end

@implementation ContactUs



-(IBAction)callUs:(id)sender{
    NSString* telNo=@"08079685685";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:telNo]];
}


-(IBAction)mailUs:(id)sender{
    
    NSString*emailAddress=[valueHolder getEmailAddress];
    NSString* mailUrl=[[NSString alloc]initWithFormat:@"mailto:%@?",emailAddress ];
    //    NSString *emailInfo = @"mailto:EMAIL?cc=support@leadway.com&subject=SUBJECT";
    [[UIApplication sharedApplication] openURL: [NSURL URLWithString: mailUrl]];
}



-(IBAction)LocateUs:(id)sender{
    NSString* addressText = @"6.485879,3.36555";
    addressText =  [addressText stringByAddingPercentEscapesUsingEncoding: NSASCIIStringEncoding];
    
    NSString* urlText = [NSString stringWithFormat:@"http://maps.google.com/maps?q=%@", addressText];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlText]];
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
    self.title=@"Contact Us";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
