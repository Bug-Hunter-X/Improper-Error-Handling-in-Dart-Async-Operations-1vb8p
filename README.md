# Dart Async Error Handling Bug

This repository demonstrates a common error in Dart asynchronous programming: insufficient error handling in `Future`s.  The provided code fetches data from a remote API.  The initial version lacks proper error handling, making debugging difficult. The solution shows how to improve error handling to provide more context and make the code more robust.

## Bug

The `bug.dart` file contains the buggy code.  It uses a `try-catch` block, but rethrows the exception without sufficient context, making it hard to pinpoint the source of the problem.

## Solution

The `bugSolution.dart` file demonstrates a corrected approach. It includes more informative error messages and logging to assist in debugging. 

This improved error handling allows for better identification of problems and easier debugging of asynchronous operations in Dart.