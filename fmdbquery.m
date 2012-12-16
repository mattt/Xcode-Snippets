// FMDB Query statement
// Uses a queue, because the api is nicer and threadsafer
//
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method


FMDatabaseQueue *queue = ￼;

￼ __block *result = nil;

[queue inDatabase:^(FMDatabase *db) {
    @try {
        
        FMResultSet *results = [db executeQuery:￼];
        
        if (!results || [results isKindOfClass:[NSNull class]]) {
            ErrorLog(￼, [db lastError]);
            return;
        }
        
        while([results next]) {
            NSDictionary *resDict = [results resuresultDictionary]
            ￼
        }

        
    } @catch (NSException *exception) {
        
        ErrorLog(￼,
                 exception.reason, [db lastError]);
        
    } @finally {
        
    }
}];