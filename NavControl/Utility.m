//
//  Utility.m
//  NavControl
//
//  Created by faseyitan on 5/30/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "Utility.h"

@interface Utility ()

@end

@implementation Utility

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(IBAction)RootRt:(id)sender{
    [valueHolder pop2Root:self.navigationController];
}
- (void)viewDidLoad
{
    
    
    UIBarButtonItem* barbtn=[[UIBarButtonItem alloc]initWithImage:[valueHolder imgHome] style:UIBarButtonItemStyleDone target:self action:@selector(RootRt:)];
    self.navigationItem.rightBarButtonItem=barbtn;

    self.title=@"Utility";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
