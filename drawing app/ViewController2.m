//
//  ViewController2.m
//  drawing app
//
//  Created by kai don aldag on 2014-08-01.
//  Copyright (c) 2014 kai.don.aldag. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(BOOL)prefersStatusBarHidden {
    return TRUE;
}


-(void) makeTotal {
    int numberOfPeople = self.numberOfPeopleField.text.intValue;
    float preTotal = self.totalField.text.floatValue;
    int tipPercent = self.tipSlider.value;
    
    NSLog(@"%i", tipPercent);
    
    tipPercent = tipPercent / 100;
    
    float makeTotalHelper = preTotal * tipPercent + preTotal / tipPercent;
    
    float total = preTotal * tipPercent + preTotal / numberOfPeople;
    
    float tipShow = makeTotalHelper;
    
    NSString *printTotal = [NSString stringWithFormat: @"Your total per person with tip is %.2f", total];
    
    self.totalLabel.text = [NSString stringWithFormat: @"%@", printTotal];
    self.mathLabel.text = [NSString stringWithFormat: @"pre total: %.2f + tip: %.2f ÷ number of people: %i total: %.2f", preTotal, tipShow, numberOfPeople, total];
}

- (IBAction)calculateTotal:(id)sender {
    [self makeTotal];
}



- (IBAction)viewGestureRecognizer:(id)sender {
    [self.totalField resignFirstResponder];
    [self.numberOfPeopleField resignFirstResponder];
    
    if (self.totalField.text.length == 0) {
    }else if (self.numberOfPeopleField.text.length == 0){
    }else {
        [self makeTotal];
    }
}
@end
