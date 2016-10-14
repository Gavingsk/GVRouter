# GVRouter

[![CI Status](http://img.shields.io/travis/Gavingsk/GVRouter.svg?style=flat)](https://travis-ci.org/Gavingsk/GVRouter)
[![Version](https://img.shields.io/cocoapods/v/GVRouter.svg?style=flat)](http://cocoapods.org/pods/GVRouter)
[![License](https://img.shields.io/cocoapods/l/GVRouter.svg?style=flat)](http://cocoapods.org/pods/GVRouter)
[![Platform](https://img.shields.io/cocoapods/p/GVRouter.svg?style=flat)](http://cocoapods.org/pods/GVRouter)

## Example

```Objective-C
    [[GVRouter shared] map:@"/test/:userId/" toControllerClass:[TestXib class] nib:@"TestXib" bundle:[NSBundle mainBundle] index:0];
    [[GVRouter shared] map:@"/testSTB/:userId/" toControllerClass:[TestSTBVC class] storyBoard:@"TestSTB" bundle:nil identifier:@"TEST"];

    TestXib *test1VC = (TestXib*)[[GVRouter shared] matchController:@"/test/2/"];
    TestSTBVC *test2VC = (TestSTBVC*)[[GVRouter shared] matchController:@"/testSTB/2/"];
    NSLog(@"%@",[])

```

## Requirements

## Installation

GVRouter is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GVRouter"
```

## Author

Gavingsk, gavin_gushaokun@126.com

## Thanks

Thanks to huohua prepared by the HHRouter, the core code is HHRouter, but an increase of several methods.

## License

GVRouter is available under the MIT license. See the LICENSE file for more info.
