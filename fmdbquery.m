// FMDB Query statement
// Uses a queue, because the api is nicer and threadsafer
//
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method


FMDatabaseQueue *queue = <#Queue#>￼;

￼ __block *result = nil;

[queue inDatabase:^(FMDatabase *db) {
    @try {
        
        FMResultSet *results = [db executeQuery:￼<#Query#>];
        
        if (!results || [results isKindOfClass:[NSNull class]]) {
            NSLog(<#Error String#>￼, [db lastError]);
            return;
        }
        
        while([results next]) {
            NSDictionary *resDict = [results resuresultDictionary]
            ￼<#Handle the object#>
        }

        
    } @catch (NSException *exception) {
        
        NSLog(￼<#Error String#>,
              exception.reason, [db lastError]);
        
    } @finally {
        
    }
}];