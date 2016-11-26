---
title: "Set Frame"
summary: "Initializes a view frame inside a code block"
completion-scope: Function or Method
---

<# view #>.frame = ({
    CGRect frame = <# view #>.frame;
    <# ... #>
    CGRectIntegral(frame);
});
