// An array of random colors.
// Generates an array of random colors, useful as a placeholder.
//
// Platform: iOS
// Language: Objective-C
// Completion Scope: Function or Method



NSMutableArray *<#name#> = [NSMutableArray new];
for(NSUInteger i = <#integer#>; i < <#max_colors#>; i++) {
    CGFloat red = arc4random() % 255;
    CGFloat green = arc4random() % 255;
    CGFloat blue = arc4random() % 255;
    <#name#>[i] = [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0f];
}