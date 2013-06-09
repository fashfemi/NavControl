//
//  Page3.m
//  NavControl
//
//  Created by faseyitan on 6/6/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "Page3.h"

@interface Page3 ()

@end

@implementation Page3


-(IBAction)swipePrev:(id)sender{
    
    Page2* detIn=[[Page2 alloc]initWithNibName:@"Page2" bundle:[NSBundle mainBundle]];
    [valueHolder popOutPagesBook:self.navigationController View2Show:detIn];
}
-(IBAction)swipeNext:(id)sender{
    ReView* rev=[[ReView alloc]initWithNibName:@"ReView" bundle:[NSBundle mainBundle]];
    [valueHolder popOutPagesBook:self.navigationController View2Show:rev];
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
    ReView* rev=[[ReView alloc]initWithNibName:@"ReView" bundle:[NSBundle mainBundle]];
    [valueHolder popOutPages:self.navigationController View2Show:rev];
}
- (void)viewDidLoad
{
    UIBarButtonItem* btnOut=[[UIBarButtonItem alloc]initWithTitle:@"Review" style:UIBarButtonItemStylePlain target:self action:@selector(RetHome)];
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
