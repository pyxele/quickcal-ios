# quickcal-ios
A simple, elegant, and unique calorie counter for iOS.

## Setup
1. Clone the repo
2. Use Xcode to build and run the app either on a simulator or on your physical device

## Making changes
Changes can be made through a Pull Request. A member from our team will review the PR once made. 

1. Make a PR with appropriate title. 
2. Fill out the template. You may delete or put `N/A` for sections as applicable.
3. Ensure status checks (listed below) are passing.
4. Request a review from [@pyxele/codeowners](https://github.com/orgs/pyxele/teams/codeowners).

|        Check  |              Description           |            Link             |
|---------------|-------------------------------|-----------------------------|
|[Codecov/patch](https://docs.codecov.com/docs/commit-status)        |           90% target minimum                    |https://github.com/pyxele/quickcal-ios/actions/workflows/codecov.yml|
|[Codecov/project](https://docs.codecov.com/docs/commit-status)        |      80% target minimum                         |https://github.com/pyxele/quickcal-ios/actions/workflows/codecov.yml|
|[Swiftlint](https://github.com/realm/SwiftLint)      |             Linter for swift files. Can be run with `--fix` for autocorrect                  |https://github.com/pyxele/quickcal-ios/actions/workflows/swiftlint.yml|

### Code Structure
Please follow the general code structure below.

```
├── QuickCal
│   ├── Previews
│   │   └── *.swift
│   └── Views
│       └── *.swift
├── QuickCalTests
│   └── *.swift
└── QuickCalUITests
    └── *.swift
```
*Not all folders or files are shown.*
