//
//  GVRouterTests.m
//  GVRouterTests
//
//  Created by Gavingsk on 10/14/2016.
//  Copyright (c) 2016 Gavingsk. All rights reserved.
//

@import XCTest;

#import <GVRouter/GVRouter.h>
#import "TestSTBVC.h"
#import "TestXib.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}
-(void)testRoute{
    
    [[GVRouter shared] map:@"/test/:userId/" toControllerClass:[TestXib class] nib:@"TestXib" bundle:[NSBundle mainBundle] index:0];
    [[GVRouter shared] map:@"/testSTB/:userId/" toControllerClass:[TestSTBVC class] storyBoard:@"TestSTB" bundle:nil identifier:@"TEST"];
    
    TestXib *test1VC = (TestXib*)[[GVRouter shared] matchController:@"/test/2/"];
    TestSTBVC *test2VC = (TestSTBVC*)[[GVRouter shared] matchController:@"/testSTB/2/"];
    
    XCTAssertEqualObjects(
                          [test1VC class],
                          [TestXib class]);
    
    XCTAssertEqualObjects(
                          [test2VC class],
                          [TestSTBVC class]);
}
@end

