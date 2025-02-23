# Ada Function Range Check with Exception Handling

This repository demonstrates a common error in Ada programming: incorrect handling of potential exceptions or unexpected inputs within functions.  Specifically, the `Check_Range` function lacks proper exception handling and the `Example` procedure demonstrates incorrect usage.

## Bug Description

The `Check_Range` function correctly checks if a number falls within a specific range. However, there's no error handling for values that might cause issues (e.g., extremely large numbers causing integer overflow).  The `Example` procedure then showcases the problem by passing an out-of-range value and incorrectly assumes that `Check_Range` will handle it appropriately.

## Solution

The solution involves adding proper exception handling to `Check_Range` and improving the robustness of the input handling.