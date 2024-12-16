/* Copyright (C) 2024 Zormeister. */

/*
 * This file is part of KernelManagement.
 
 * KernelManagement is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
 
 * KernelManagement is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 
 * You should have received a copy of the GNU General Public License along with KernelManagement. If not, see <https://www.gnu.org/licenses/>.
 */

#import <Foundation/Foundation.h>

#import <KernelManagement/KernelManagementPriv.h>

extern NSString *KMExtensionPathForBundleIdentifier(NSString *bundleIdentifier);

//extern enum OSKMErrorCode KMUnloadExtensionsWithIdentifiers(NSArray *bundleIdentifiers);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        NSString *str1 = KMExtensionPathForBundleIdentifier(@"com.apple.kpi.iokit");
        NSString *str2 = KMExtensionPathForBundleIdentifier(@"com.apple.kext.AMDRadeonX5000HWServices");
        int i = 100;
        wait(&i);
        NSArray *arr = @[str1, str2];
        NSArray *arr2 = @[ @"/System/Library/Extensions", @"/Library/Extensions" ];
        enum OSKMErrorCode res = KMLoadExtensionsWithPaths(arr, arr2);
        NSLog(@"our ecs: %lx & %lx", kOSKMErrorOK, kOSKMErrorInternalError);
        switch (res) {
            case kOSKMErrorInternalError:
                NSLog(@"unpermitted");
                break;
            default:
                NSLog(@"KMLoadExtensionsWithPaths returned %lx", res);
        }
        NSString *str12 = KMExtensionPathForBundleIdentifier(@"com.apple.iokit.AppleBCM5701Ethernet");
        NSArray *arr3 = @[ str12 ];
        wait(&i);
        enum OSKMErrorCode res2 = KMLoadExtensionsWithIdentifiers(arr3, arr2);

        switch (res2) {
            case kOSKMErrorInternalError:
                NSLog(@"unpermitted");
                break;
            default:
                NSLog(@"KMLoadExtensionsWithIdentifiers returned %lx", res2);
        }
    }
    return 0;
}
