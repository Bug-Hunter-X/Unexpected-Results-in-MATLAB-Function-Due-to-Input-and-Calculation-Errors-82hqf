# MATLAB Function Bug: Unexpected Results

This repository demonstrates a bug in a MATLAB function that leads to unexpected results due to improper input validation and potential overflow during calculations. The bug occurs when the input value results in an intermediate calculation that exceeds the maximum representable number, causing unexpected behavior in subsequent operations.

The solution demonstrates how to enhance the function's robustness by improving input validation and implementing checks for potential overflow conditions. It also highlights appropriate ways to handle such exceptions and provide informative error messages to the user.

## Bug Description:

The `myFunction` function is designed to perform a specific calculation. However, it does not appropriately handle negative inputs, which can lead to an error.  Further, the `someCalculation` function can produce unexpected results such as `Inf` due to an overflow condition which could cause issues in future calculation.

## Solution:

The solution improves the function by adding input validation to prevent negative values and by checking the results of `someCalculation` to catch potential overflows. Error handling is also improved to provide clearer error messages. 