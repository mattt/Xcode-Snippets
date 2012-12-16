// UUID Generation Method
// Since using the device ID is deprecated, the new recommended method of creating UUIDS
//
// Platform: All
// Language: Objective-C
// Completion Scope: Class Implementation

+ (NSString *)uuid {
    
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    CFStringRef uuidcfstring = CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
    NSString *uuidstring = (__bridge NSString *)uuidcfstring;
    CFRelease(uuidcfstring);
    return uuidstring;
}
