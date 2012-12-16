// Library directory in the app sandbox
// Use for things you don't want to be accessible from iTunes sharing
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

NSArray *libraryPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory,
                                                             NSUserDomainMask,
                                                             YES);
NSString *libraryDir = [documentPaths objectAtIndex:0];