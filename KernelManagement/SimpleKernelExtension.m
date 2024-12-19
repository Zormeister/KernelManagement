//
//  SimpleKernelExtension.m
//  KernelManagement
//
//  Created by Zormeister on 17/12/2024.
//

#import "KernelManagementPriv.h"

/* thx RTTI & class-dump. */
@implementation SimpleKernelExtension

/* is this where instance vars go? */
{
    bool _loaded;
    bool _kextIsSigned;
    NSString *_bundleIdentifier;
    NSString *_fileSystemPath;
    NSString *_versionString;
    NSDate *_lastModifiedDate;
    NSString *_signingInfo;
    NSString *_infoString;
    NSString *_type;
    NSString *_displayName;
    NSArray *_architectures;
    NSString *_loadAddress;
    NSString *_usageDescription;
}

@end
