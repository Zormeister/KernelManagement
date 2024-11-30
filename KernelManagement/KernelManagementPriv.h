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
#import <KernelManagement/KMConfig.h>

/* ZORMEISTER: This is based on the TBD files from MacOSX15.1.sdk */

FOUNDATION_EXPORT NSErrorDomain const OSKernelManagementErrorDomain;

/* UNKNOWN EXPORTS:
 * - KMExtensionPathForBundleIdentifier
 * - KMLoadExtensionsWithIdentifiers
 * - KMLoadExtensionsWithPaths
 * - KMUnloadExtensionsWithIdentifiers
 */

/* ZORMEISTER: Guessing that we have some enum here considering the ErrorDomain. */

/* considering the fact that OSKernelManagementErrorCode is long as shit, i'm abrieviating it */
NS_ERROR_ENUM(OSKernelManagementErrorDomain, OSKMErrorCode) {
    OSKMErrorOK,
    OSKMErrorUnpermitted = 0xDC008001, /* wtf does this integer mean, goes away when sudoing */
};

/* Got this down after having fucked around & found out with C/CXX, it's ObjC, it all is. LMAO. */
FOUNDATION_EXPORT NSString *KMExtensionPathForBundleIdentifier(NSString *bundleIdentifier);

FOUNDATION_EXPORT enum OSKMErrorCode KMLoadExtensionsWithPaths(NSArray *paths);

#if KM_NO_OBJC_CLASSES == 0

/* Nope. Nope. NOPE. I am NOT touching this. */

@interface SimpleKernelExtension : NSObject

@end

@interface KernelManagementClient : NSObject

@end
#endif
