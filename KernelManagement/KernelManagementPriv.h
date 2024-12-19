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
#import <libkern/OSKextLib.h>

/* ZORMEISTER: This is based on the TBD files from MacOSX15.1.sdk */

FOUNDATION_EXPORT NSErrorDomain const OSKernelManagementErrorDomain;

/* considering the fact that OSKernelManagementErrorCode is long as hell, i'm abrieviating it */
NS_ERROR_ENUM(OSKernelManagementErrorDomain, OSKMErrorCode) {
    kOSKMErrorOK,
    kOSKMErrorInternalError = kOSKextReturnInternalError,
};

/* oh. my. god. It's all defined in IOKitUser. I have wasted time pointlessly poking the framework. */
FOUNDATION_EXPORT NSString *KMExtensionPathForBundleIdentifier(NSString *identifier);

FOUNDATION_EXPORT OSReturn KMLoadExtensionsWithPaths(NSArray *paths, NSArray *dependencyAndFolderPaths);

FOUNDATION_EXPORT OSReturn KMLoadExtensionsWithIdentifiers(NSArray *identifiers, NSArray *dependencyAndFolderPaths);

FOUNDATION_EXPORT OSReturn KMUnloadExtensionsWithIdentifiers(NSArray *identifiers);

/* I wonder why they kept these headers under wraps. Probably because you can load kexts via IOKitUser. Eh. Oh well. */

#if KM_NO_OBJC_CLASSES == 0

@interface SimpleKernelExtension : NSObject

@end

@interface KernelManagementClient : NSObject

@end

#endif
