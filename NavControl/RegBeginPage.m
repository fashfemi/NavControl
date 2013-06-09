//
//  RegBeginPage.m
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "RegBeginPage.h"

@interface RegBeginPage ()

@end

@implementation RegBeginPage
@synthesize regDet;
-(IBAction)switchPage:(id)sender{
    if(self.regDet==nil){
        RegDetails* detIn=[[RegDetails alloc]initWithNibName:@"RegDetails" bundle:[NSBundle mainBundle]];
        self.regDet=detIn;
        
    }
    [valueHolder transit1:self.navigationController View2Show:regDet];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)RetHome{
    [valueHolder pop2Root:self.navigationController];
    
   
    
}
- (void)viewDidLoad
{
     UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(RetHome)];
    self.navigationItem.rightBarButtonItem=btnOut;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
