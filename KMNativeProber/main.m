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

extern enum OSKMErrorCode KMLoadExtensionsWithPaths(NSArray *paths);

/* seg faults, i'd need to run a debugger or smthn */
//extern enum OSKMErrorCode KMLoadExtensionsWithIdentifiers(NSArray *bundleIdentifiers);
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
        enum OSKMErrorCode res = KMLoadExtensionsWithPaths(arr);
        NSLog(@"our ecs: %lx & %lx", OSKMErrorOK, OSKMErrorUnpermitted);
        switch (res) {
            case OSKMErrorUnpermitted:
                NSLog(@"unpermitted");
                break;
            default:
                NSLog(@"KMLoadExtensionsWithPaths returned %lx", res);
        }
        NSString *str12 = @"com.apple.kpi.iokit";
        NSString *str22 = @"com.apple.kext.AMDRadeonX5000HWServices";
        wait(&i);
        NSArray *arr2 = @[str12, str22];
        //enum OSKMErrorCode res2 = KMLoadExtensionsWithIdentifiers(arr2);

        //switch (res2) {
        //    case OSKMErrorUnpermitted:
        //        NSLog(@"unpermitted");
        //        break;
        //    default:
        //        NSLog(@"KMLoadExtensionsWithPaths returned %lx", res2);
        //}
    }
    return 0;
}
