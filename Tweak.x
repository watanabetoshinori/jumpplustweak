#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%hook ViewerController

- (void)viewWillAppear:(BOOL)animated {
    %orig;

    NSLog(@"JumpPlusTweak - hook ViewerController#viewWillAppear");

    UIViewController *viewController = (UIViewController *)self;
    [viewController.navigationItem.leftBarButtonItem.customView.widthAnchor constraintEqualToConstant: 44].active = YES;
}

%end

%ctor {
    NSLog(@"JumpPlusTweak - init");

    %init(ViewerController = objc_getClass("SHJ2.ViewerController"));
}
