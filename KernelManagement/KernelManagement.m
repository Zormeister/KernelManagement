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

#import "KernelManagementPriv.h"

/* I have zero actual idea what this value actually is. */
const NSErrorDomain OSKernelManagementErrorDomain = @"Kernel Management";

static NSString *gSysExtPath = @"/System/Library/Extensions";
static NSString *gLibExtPath = @"/Library/Extensions";

NSString *KMExtensionPathForBundleIdentifier(NSString *bundleIdentifier) {
    /* I can't be bothered implementing this rn */
    return NULL;
}

enum OSKMErrorCode KMLoadExtensionsWithPaths(NSArray *paths) {
    /* I can't be bothered implementing this rn */
    return OSKMErrorOK;
}
