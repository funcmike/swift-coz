# Swift Coz (Linux Only)

Coz profiler Swift wrapper/bindings.

This is a Swift wrapper around the `Coz` profiler here: https://github.com/plasma-umass/coz inspired from https://github.com/urjitbhatia/cozgo (method names, example and this README.md)


### Code Usage {#code-usage}

| Coz Call      | Equivalent Swift Coz Call | Description |
| ----------- | -----------   | ----------- | 
| COZ_BEGIN("name")   | cozBegin("name")   | Begin a latency profiling block identified by the name |
| COZ_END("name")     | cozEnd("name")     | End a latency profiling block identified by the name|
| COZ_PROGRESS()     | cozProgress()     | Specify a progress point within a block of work|
| COZ_PROGRESS()     | cozProgressNamed("name")     | Specify a named progress point within a block of work|

## For background on causal profiling, see

Paper: http://www.sigops.org/s/conferences/sosp/2015/current/2015-Monterey/printable/090-curtsinger.pdf

Blog: https://morsmachine.dk/causalprof

## Running/Usage - Coz works only on Linux

- Install Coz: https://github.com/plasma-umass/coz
    - For OS X users, the easiest way is to run a docker image with linux for Swift (Intel: https://hub.docker.com/_/swift or Arm64: https://hub.docker.com/r/swiftarm/swift)
    - Install Coz: `apt update && apt install coz-profiler`
- Add Swift Coz depedency to Your Package.swift:
```
  dependencies: [
    .package(
      url: "https://github.com/funcmike/swift-coz.git", .branch("main")
    )
  ],
```
- Import Swift Coz: `import Coz`
- Call the `Coz` wrappers in your application
    - See the [Code Usage Section above](#code-usage)
- Build your `swift` binary with debug symbols: `swift build -c debug` and
    Check directory with binary: `swift build -c debug --show-bin-path`
- Run your application with Coz: `coz run --- /path/to/yourSwiftBinary`
- Let the application run for a while (you might want to run some load test etc, so that the profiler can pick up usage
  data)
- By default, Coz will create a file called `profile.coz`
- Use the Coz viewer to analyze the profile (run: node's `http-server` in *viewer* directory of Coz repository https://github.com/plasma-umass/coz)
