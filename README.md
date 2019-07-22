# DogSwift

A lightweight and easy to use logging API to include in your mobile iOS application. 

DogSwift uses `os_log` on devices with iOS 10.0+ installed and falls back to `NSLog` for older iOS versions. DogSwift can print errors, messages and object descriptions to Xcode's debugging console. It's also possible to tag each logging statement with a category which will be utilized by Apple's `os_log` implementation, like `UI`, `Networking` et cetera.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Instructions

Add the environment variable `LOG_LEVEL` along with the desired value:
- `error = 0`
- `warn = 1`
- `info = 2`
- `debug = 3`

### Log to Xcode's debugging console
```
// Log function name of current scope.
Log.info(#function)

// The message parameter can be of type `Any`.
Log.debug(view.bounds, tag: .ui)

// Log a warning.
Log.warn("Current device is running iOS 9.0, which doesn't support os_log.", tag: .location)

// Error logging.
let exampleError = NSError(domain: "ch.dreipol", code: -9999, userInfo: [
    NSLocalizedDescriptionKey: "Flying to the moon was not possible.",
    NSLocalizedFailureReasonErrorKey: "The operation timed out.",
    NSLocalizedRecoverySuggestionErrorKey: "Have you tried turning it off and on again?"
])
Log.error(exampleError, description: #function, tag: .system
```

### Logging with tags
Tags can help to group the logging output. Currently the folliwing tags are supported:
- `networking`
- `database`
- `system`
- `ui`
- `view`
- `location`
- `pushNotification`
- `notifications`
- `workflow`
- `barcode`
- `rx`

## Requirements

Swift 4.2

## Installation

DogSwift is available through CocoaPods. To install
it, simply add the following line to your Podfile:

```ruby
pod 'DogSwift', :git => 'https://github.com/dreipol/DogSwift.git'
```
