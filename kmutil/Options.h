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

#include <stdint.h>
#include <CoreFoundation/CoreFoundation.h>
#include <ExternalHeaders/kernel_collection_builder.h>

class KmutilOptions {

public:
    KmutilOptions(int argc, const char *argv[]);
    ~KmutilOptions();

    
    CFStringRef getKextRepositoryPath();
    
    CFArrayRef getKextPaths();
    
private:
    CFStringRef fKextRepository;
    CFArrayRef fKextInfo;
    CFStringRef fVariantString;
    CFStringRef fBundleID;
    CFStringRef fArch;
    BinaryStripMode fBinaryStripMode;
    StripMode fStripMode;
};
