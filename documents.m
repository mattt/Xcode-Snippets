// Documents directory in the app sandbox
// Use for things you want to be accessible from iTunes sharing
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                             NSUserDomainMask,
                                                             YES);
NSString *documentsDir = [documentPaths objectAtIndex:0];