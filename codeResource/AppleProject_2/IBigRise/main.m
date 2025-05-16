// __DEBUG__
// __CLOSE_PRINT__
//
//  main.m
//  IBigRise
//
//  Created by tyl on 2025/3/3.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "ZZZAppDelegate.h"
#import "AppDelegate.h"

//: int main(int argc, char * argv[]) {
int main(int argc, char * argv[]) {
    //: NSString * appDelegateClassName;
    NSString * appDelegateClassName;
    //: @autoreleasepool {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        //: appDelegateClassName = NSStringFromClass([ZZZAppDelegate class]);
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    //: return UIApplicationMain(argc, argv, nil, appDelegateClassName);
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
