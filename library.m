// Library Directory Path
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

NSArray *librarySearchPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
NSString *libraryDirectory = [librarySearchPaths count] == 0 ? nil : [librarySearchPaths objectAtIndex:0];
