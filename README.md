# Combine-CombineLatestArity
___

[![Combine-CombineLatestArity](https://github.com/clementpadovani/Combine-CombineLatestArity/actions/workflows/tests.yml/badge.svg)](https://github.com/clementpadovani/Combine-CombineLatestArity/actions/workflows/tests.yml) [![codecov](https://codecov.io/gh/clementpadovani/Combine-CombineLatestArity/branch/main/graph/badge.svg?token=SRO5FOJK9V)](https://codecov.io/gh/clementpadovani/Combine-CombineLatestArity)

#### Description

Combine-CombineLatestArity is a cross-platform (iOS, macOS, tvOS, watchOS) extension to Combine’s [`Publisher`](https://developer.apple.com/documentation/combine/publisher) allowing to use the `combineLatest` operator with up to 26 other publishers.

100% unit test coverage

##### System requirements

+ Combine
+ Deployment target of iOS 13.0+ / macOS 10.15+ / tvOS 13.0+ / watchOS 6.0+
+ Swift 5.0+

## Installation
___

### SPM

Add the extension to your `Package.swift`:

```swift
dependencies: [
  .package(url: "https://github.com/clementpadovani/Combine-CombineLatestArity.git", .upToNextMajor(from: "1.0.0"))
]
```

### CocoaPods

Add the following to your Podfile:

```ruby
pod 'CombineCombineLatestArity', '~> 1.0'
```

## License
___

Combine-CombineLatestArity is released under the MIT license. See LICENSE for details.
