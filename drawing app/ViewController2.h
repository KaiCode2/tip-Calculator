//
//  ViewController2.h
//  drawing app
//
//  Created by kai don aldag on 2014-08-01.
//  Copyright (c) 2014 kai.don.aldag. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *totalLabel;

@property (strong, nonatomic) IBOutlet UILabel *mathLabel;


@property (strong, nonatomic) IBOutlet UITextField *totalField;

@property (strong, nonatomic) IBOutlet UITextField *numberOfPeopleField;

@property (strong, nonatomic) IBOutlet UISlider *tipSlider;


- (IBAction)calculateTotal:(id)sender;


- (IBAction)viewGestureRecognizer:(id)sender;

@end
