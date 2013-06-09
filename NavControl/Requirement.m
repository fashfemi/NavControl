//
//  Requirement.m
//  NavControl
//
//  Created by faseyitan on 6/5/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "Requirement.h"

@interface Requirement ()

@end

@implementation Requirement
@synthesize begPage;
-(IBAction)switchPage:(id)sender{
   // if(self.begPage==nil){
        RegBeginPage* begIn=[[RegBeginPage alloc]initWithNibName:@"RegBeginPage" bundle:[NSBundle mainBundle]];
        self.begPage=begIn;
   // }
    [valueHolder transit1:self.navigationController View2Show:begPage];
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
    self.title=@"Requirements";
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
