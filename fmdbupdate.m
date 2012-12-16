// FMDB Update statement
// Uses a queue, because the api is nicer and threadsafer
//
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method


[queue inDatabase:^(FMDatabase *db) {
    
    @try {
        BOOL result = [db executeUpdate:￼];
        
        if (!result || [result isKindOfClass:[NSNull class]]) {
            ErrorLog(￼, [db lastError]);
        }
        
    } @catch (NSException *exception) {
        
        ErrorLog(￼,
                 exception.reason, [db lastError]);
    } @finally {
    }
}];