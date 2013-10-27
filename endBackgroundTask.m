// End Background Task
// Ends a background task with previously returned UIBackgroundTaskIdentifier. Used in conjunction with Start Background Task.
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

[[UIApplication sharedApplication] endBackgroundTask:backgroundTask];
backgroundTask = UIBackgroundTaskInvalid;
