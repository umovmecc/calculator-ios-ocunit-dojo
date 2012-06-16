//
//  ViewController.h
//  CalculadoraNPR
//
//  Created by Otávio Zabaleta on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorEngine.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnMinus;
@property (strong, nonatomic) IBOutlet UIButton *btnPlus;
@property (strong, nonatomic) IBOutlet UILabel *lblResult;
@property (strong, nonatomic) CalculatorEngine *engine;

@end
