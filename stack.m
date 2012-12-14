// Log stack trace
// Useful when there are repeated calls to a block of code and you don't want to hit a breakpoint every time
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

NSLog(@"call stack: %@", [NSThread callStackSymbols]);