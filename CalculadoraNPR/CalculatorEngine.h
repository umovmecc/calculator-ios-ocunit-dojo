//
//  CalculatorEngine.h
//  CalculadoraNPR
//
//  Created by Otávio Zabaleta on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorEngine : NSObject

- (void)pushOperand:(double)operand;
- (double)popOperand;
- (double)performOperation:(NSString *)operation;

@end
