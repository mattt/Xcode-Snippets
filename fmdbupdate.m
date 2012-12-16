// FMDB Update statement
// Uses a queue, because the api is nicer and threadsafer
//
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method


[queue inDatabase:^(FMDatabase *db) {
    
    @try {
        BOOL result = [db executeUpdate:<#Query#>￼];
        
        if (!result || [result isKindOfClass:[NSNull class]]) {
            NSLog(￼<#Error string#>, [db lastError]);
        }
        
    } @catch (NSException *exception) {
        
        NSLog(￼<#Error string#>,
                 exception.reason, [db lastError]);
    } @finally {
    }
}];