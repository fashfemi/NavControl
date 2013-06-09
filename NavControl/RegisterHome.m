//
//  RegisterHome.m
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "RegisterHome.h"

@interface RegisterHome ()

@end

@implementation RegisterHome
@synthesize req;

-(IBAction)switchPage:(id)sender{
   // if (self.req==nil) {
        Requirement* reqIn=[[Requirement alloc]initWithNibName:@"Requirement" bundle:[NSBundle mainBundle]];
        self.req=reqIn;
  //  }
    [valueHolder transit1:self.navigationController View2Show:req];
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
    [self.navigationItem setHidesBackButton:YES animated:YES];
    self.title=@"Register";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
