// Core Data Fetch
// Boilerplate code for a simple Core Data fetch
//
// Platform: iOS
// Language: Objective-C
// Completion Scope: Class Implementation

id context = [[[UIApplication sharedApplication] delegate] managedObjectContext];

NSFetchRequest *request = [[NSFetchRequest alloc] init];

NSEntityDescription *entity = [NSEntityDescription entityForName:<#entityName#> inManagedObjectContext:context];
[request setEntity:entity];

NSPredicate *predicate = [NSPredicate predicateWithFormat:<#predicateFormat#>];
[request setPredicate:predicate];

NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:<#key#> ascending:<#isAscending#>];
[request setSortDescriptors:@[sortDescriptor]];

NSError *error;
NSArray *fetchedObjects = [context executeFetchRequest:request error:&error];

if (error) {
    
    NSLog(<#Error Message#>);
}