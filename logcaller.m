//You should #include <dlfcn.h>
void *addr = __builtin_return_address(0);
Dl_info info;
dladdr(addr, &info);
NSString *callerName = [NSString stringWithUTF8String: info.dli_sname];
NSLog(@"%@", callerName);