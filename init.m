---
title: "init"
summary: "Designated incantation for your designated initializers"
completion-scope: CodeBlock
---

self = [super init];
if (!self) {
  return nil;
}

<#initializations#>

return self;
