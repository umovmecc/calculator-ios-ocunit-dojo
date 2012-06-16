//
//  CalculadoraNPRTests.m
//  CalculadoraNPRTests
//
//  Created by Otávio Zabaleta on 6/13/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculadoraNPRTests.h"
#import "CalculatorEngine.h"

@interface CalculadoraNPRTests()
@property (nonatomic, strong) CalculatorEngine *engine;
@end

@implementation CalculadoraNPRTests

@synthesize engine;

- (void)setUp
{
    [super setUp];
    engine = [[CalculatorEngine alloc] init];
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testShouldAdd2and2
{
    [engine pushOperand:2];
    [engine pushOperand:2];
    double result = [engine performOperation:@"+"];
    STAssertEquals(result, (double)4, @"Deu merda");
}

- (void)testShouldSub2and2
{
    [engine pushOperand:2];
    [engine pushOperand:2];
    double result = [engine performOperation:@"-"];
    STAssertEquals(result, (double)0, @"Deu merda");
}

@end
