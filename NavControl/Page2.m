//
//  Page2.m
//  NavControl
//
//  Created by faseyitan on 6/6/13.
//  Copyright (c) 2013 Leadway. All rights reserved.
//

#import "Page2.h"

@interface Page2 ()

@end

@implementation Page2
@synthesize page3;



-(IBAction)swipePrev:(id)sender{
    
    Page1* detIn=[[Page1 alloc]initWithNibName:@"Page1" bundle:[NSBundle mainBundle]];
    [valueHolder popOutPagesBook:self.navigationController View2Show:detIn];
}

-(IBAction)swipeNext:(id)sender{
    if(self.page3==Nil){
        Page3* detIn=[[Page3 alloc]initWithNibName:@"Page3" bundle:[NSBundle mainBundle]];
        self.page3=detIn;
    }
    [valueHolder transit2:self.navigationController View2Show:page3];
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
