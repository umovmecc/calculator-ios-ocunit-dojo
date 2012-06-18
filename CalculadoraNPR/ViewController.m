//
//  ViewController.m
//  CalculadoraNPR
//
//  Created by Otávio Zabaleta on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize btnMinus;
@synthesize btnPlus;
@synthesize lblResult;
@synthesize engine;

#pragma mark - events

- (IBAction)minusPressed:(UIButton *)sender {
    double result = [engine performOperation:sender.titleLabel.text];
    lblResult.text = [NSString stringWithFormat:@"%@", [NSNumber numberWithDouble: result]]; 
}

- (IBAction)plusPressed:(UIButton *)sender {
    double result = [engine performOperation:sender.titleLabel.text];
    lblResult.text = [NSString stringWithFormat:@"%@", [NSNumber numberWithDouble: result]]; 
}

- (IBAction)enterPressed:(UIButton *)sender {
    double operand = [lblResult.text doubleValue];
    [engine pushOperand:operand];
    lblResult.text = @"";
}

- (IBAction)numberPressed:(UIButton *)sender {
    lblResult.text = [NSString stringWithFormat:@"%@%@",lblResult.text, sender.titleLabel.text]; 
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    engine = [[CalculatorEngine alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setBtnMinus:nil];
    [self setBtnPlus:nil];
    [self setLblResult:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


@end
