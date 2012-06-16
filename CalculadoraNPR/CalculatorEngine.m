//
//  CalculatorEngine.m
//  CalculadoraNPR
//
//  Created by Otávio Zabaleta on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorEngine.h"

@interface CalculatorEngine()
@property (strong, nonatomic) NSMutableArray *numberStack;
@end

@implementation CalculatorEngine

@synthesize numberStack;

- (void)pushOperand:(double)operand {
    NSNumber *oOperand = [NSNumber numberWithDouble:operand];
    if(!numberStack) {
        numberStack = [[NSMutableArray alloc] init];
    }
    [numberStack addObject:oOperand];
    NSLog(@"inseriu %@", [NSNumber numberWithDouble:operand]);

}

- (double)popOperand {
    double ret = 0;
    if(numberStack && [numberStack count] > 0) {
        ret = [[numberStack lastObject] doubleValue];
        [numberStack removeLastObject];
    }
    return ret;
}

- (double)performOperation:(NSString *)operation {
    double result = 0;
    
    if([operation isEqualToString:@"+"]) {
        result = [self popOperand] + [self popOperand];
    }
    else if ([operation isEqualToString:@"-"]) {
        result = [self popOperand] - [self popOperand];
    }
    
    [self pushOperand:result];
    return result;
}

@end
