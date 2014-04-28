// lget
// Lazy getter for your @property
//
// Platform: All
// Language: Objective-C
// Completion Scope: Class Implementation

- (<#type#>)<#property#> {
    if (_<#property#>) return _<#property#>;
    
    _<#property#> = [[<#type#> alloc] init];

    return _<#property#>;
}