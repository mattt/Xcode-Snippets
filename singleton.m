// Shared Singleton
// Class method that returns a singleton instance
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class Implementation

+ (instancetype)shared<#name#> {
    static <#class#> *_shared<#name#> = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shared<#name#> = <#initializer#>;
    });
    
    return _shared<#name#>;
}
