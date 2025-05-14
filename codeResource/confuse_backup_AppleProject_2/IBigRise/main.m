//
//  main.m
//  IBigRise
//
//  Created by tyl on 2025/3/3.
//

#import <UIKit/UIKit.h>
#import "ZZZAppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([ZZZAppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
