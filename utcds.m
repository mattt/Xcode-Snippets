// Unit Test Core Data Stack
// Snippet for creating a Core Data stack with an in-memory store for unit tests
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Class Implementation

{
    NSPersistentStoreCoordinator *_coordinator;
    NSManagedObjectContext *_context;
    NSManagedObjectModel *_model;
    NSPersistentStore *_store;
}

- (void)setUp {
    _model = [NSManagedObjectModel mergedModelFromBundles:nil];
    _coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:_model];
    _store = [_coordinator addPersistentStoreWithType:NSInMemoryStoreType
                                        configuration:nil
                                                  URL:nil
                                              options:nil
                                                error:NULL];
    
    _context = [[NSManagedObjectContext alloc] init];
    [_context setPersistentStoreCoordinator:_coordinator];
}

- (void)tearDown {
    _context = nil;
    NSError *error = nil;
    STAssertTrue([_coordinator removePersistentStore:_store error:&error], @"Could not remove the persistent store: %@", error);
    _store = nil;
    _coordinator = nil;
    _model = nil;
}

- (void)testThatPersistentStoreExists {
    STAssertNotNil(_store, @"Store should not be nil");
}

