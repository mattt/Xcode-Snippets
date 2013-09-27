// Documents Directory Path
//
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

NSArray *documentsSearchPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
NSString *documentsDirectoryString = [documentsSearchPaths firstObject];
NSURL *documentsDirectoryURL = [NSURL URLWithString:documentsDirectoryString];
