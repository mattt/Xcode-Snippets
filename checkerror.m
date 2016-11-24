---
title: "CheckError"
summary: "Function that extracts human-readable information from OSStatus codes."
credit: "'Learning Core Audio: A Hands-on Guide to Audio Programming for Mac and iOS', by Chris Adamson, Kevin Avila"
completion-scopes:
  - Code Expression
  - CodeBlock
---

static void CheckError(OSStatus error, const char *operation) {
    if (error == noErr) {
      return;
    }

    char str[20];
    *(UInt32 *) (str + 1) = CFSwapInt32HostToBig(error);
    if (isprint(str[1]) && isprint(str[2]) && isprint(str[3]) && isprint(str[4])) {
        str[0] = str[5] = '\'';
        str[6] = '\0';
    } else {
        sprintf(str, "%d", (int)error);
    }

    fprintf(stderr, "[Error] %s (%s)\n", operation, str);
    exit(1);
}
