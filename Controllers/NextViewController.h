//
//  NextViewController.h
//  Controllers
//
//  Created by Ireslab on 15/07/15.
//  Copyright (c) 2015 Ireslab Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController

@property (strong, nonatomic) NSString *strMessage;
@property (strong, nonatomic) IBOutlet UILabel *lblPageIndex;
@property (strong, nonatomic) IBOutlet UILabel *lblPageMessage;

- (IBAction)btnYesPressed:(id)sender;
- (IBAction)btnNoPressed:(id)sender;

@end
