// Create a singleton-pattern Method
//
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

+ (<#class name#>)sharedInstance
{
	static <#class name#> __instance;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		__instance = [[self alloc] init];
	});
	return __instance;
}