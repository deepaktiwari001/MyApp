//
//  NextViewController.m
//  Controllers
//
//  Created by Ireslab on 15/07/15.
//  Copyright (c) 2015 Ireslab Inc. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController
@synthesize lblPageMessage;
@synthesize strMessage;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    lblPageMessage.text = strMessage;
    self.navigationItem.hidesBackButton = YES;
}


- (IBAction)btnYesPressed:(id)sender
{
    NextViewController *newView = [[NextViewController alloc] initWithNibName:@"NextViewController" bundle:[NSBundle mainBundle]];
    newView.title = [NSString stringWithFormat:@"%d",[self.title intValue]+1];
    //newView.lblPageIndex.text = @"";
    newView.strMessage = @"Yes Pressed !";
    
    [self.navigationController pushViewController:newView animated:YES];
}

- (IBAction)btnNoPressed:(id)sender
{
    NextViewController *newView = [[NextViewController alloc] initWithNibName:@"NextViewController" bundle:[NSBundle mainBundle]];
    newView.title = [NSString stringWithFormat:@"%d",[self.title intValue]+1];
    //newView.lblPageIndex.text = @"";
    newView.strMessage = @"No Pressed !";
    
    [self.navigationController pushViewController:newView animated:YES];
}

@end
