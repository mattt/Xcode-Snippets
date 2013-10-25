// NSOperationQueue version of async/main thread work.
// Do some work in the background, and then finish on the main thread. You can save the NSBlockOperation
// for cancellation later if you wish.
//
// Platform: iOS
// Language: Objective-C
// Completion Scope: Function or Method


NSOperationQueue *<#name#> = [NSOperationQueue new];
NSBlockOperation *<#name#> = [NSBlockOperation new];
[<#block_operation#> addExecutionBlock:^{
    <#code#>
    [[NSOperationQueue mainQueue]addOperationWithBlock:^{
        <#code#>
    }];
}];
[<#queue#> addOperation:<#block_operation#>];