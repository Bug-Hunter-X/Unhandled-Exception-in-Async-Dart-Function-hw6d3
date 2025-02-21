# Unhandled Exception in Async Dart Function

This example demonstrates a common error in asynchronous Dart code:  failure to properly handle exceptions within an `async` function's `catch` block.  The original code prints the error but doesn't prevent the exception from propagating up the call stack, potentially crashing the application.

The solution shows how to effectively handle the exception using a `try-catch` block and provides more robust error handling.