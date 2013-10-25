// Cedar Swizzle Helper Snippet
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

__block IMP origImpl;
__block Method origMethod;
__block BOOL methodHasBeenCalled;

beforeEach(^{
    methodHasBeenCalled = NO;
    origMethod = class_getInstanceMethod([<#ClassName#> class], @selector(<#selector#>));
	
    IMP mockBlock = imp_implementationWithBlock(^(id _self <#, ...#>){
        methodHasBeenCalled = YES;
        
        <#Block implementation#>
    });
	
    origImpl = method_setImplementation(origMethod, mockBlock);

    <#Call to test...#>
});

afterEach(^{
    method_setImplementation(origMethod, origImpl);
});
