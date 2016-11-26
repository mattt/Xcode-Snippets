// Start Background Task
// Starts a background task and returns the UIBackgroundTaskIdentifier. Used in conjunction with End Background Task.
// 
// Platform: All
// Language: Objective-C
// Completion Scope: Function or Method

__block UIBackgroundTaskIdentifier backgroundTask = [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:^{
    [[UIApplication sharedApplication] endBackgroundTask:backgroundTask];
    backgroundTask = UIBackgroundTaskInvalid;
}];
