//
//  ViewController.m
//  drawing app
//
//  Created by kai don aldag on 2014-08-01.
//  Copyright (c) 2014 kai.don.aldag. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
//	UIAlertView * startingAlert = [[UIAlertView alloc] initWithTitle: @"Welcome" message: @"To set a tip simply set the slider to where you want it, enter the amount and the hit calulate!" delegate: nil cancelButtonTitle: @"OK" otherButtonTitles: nil];
//    
//    [startingAlert show];
    
    
    
}

-(BOOL)prefersStatusBarHidden {
    return TRUE;
}

-(void) makeTotal {
    float preTotal = self.beforeTipTotal.text.floatValue;
    float tipPercentAsFloat = self.tipSlider.value;
    
    tipPercentAsFloat = tipPercentAsFloat / 100;
    
//    int tipPercentAsInt = (int)tipPercentAsFloat;

//    NSNumber *tipPercent = [NSNumber numberWithFloat: tipPercents];
    
    float total = preTotal * tipPercentAsFloat + preTotal;
    
    float tipShow = total - preTotal;
    
    NSString *printTotal = [NSString stringWithFormat: @"Your total with tip is %.2f", total];
    
    
//    UIAlertView *flashTotal = [[UIAlertView alloc] initWithTitle: @"Total" message: printTotal delegate: nil cancelButtonTitle: @"OK!" otherButtonTitles: nil];
//    
//    [flashTotal show];
    
    self.totalLabel.text = [NSString stringWithFormat: @"%@", printTotal];
    
    self.showMathLabel.text = [NSString stringWithFormat: @"pre total: %.2f + tip: %.2f total: %.2f", preTotal, tipShow, total];
}

- (IBAction)calculateTotal:(id)sender {
    [self makeTotal];
}






- (IBAction)viewGestureRecognizer:(id)sender {
    [self.beforeTipTotal resignFirstResponder];
    
    if (self.beforeTipTotal.text.length == 0) {
    }else {
        [self makeTotal];
    }
}


@end
