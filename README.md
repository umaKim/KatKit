# KatKit
KatKit is a Swift UI library for iOS. It looks similar to the Daagn market category horizontal scroll view, while allowing customization when needed.

## Installation
KatKit can be installed with Swift Package Manager or with CocoaPods.

Swift Package Manager (Xcode 12 or higher)
The preferred way of installing KatKit is via the Swift Package Manager.

In Xcode, open your project and navigate to File → Swift Packages → Add Package Dependency...
Paste the repository URL (https://github.com/umaKim/KatKit.git) and click Next.
For Rules, select Version (Up to Next Major) and click Next.
Click Finish.

## Usage
```Swift
let katView = KatView()
katView.delegate = self
katView.items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8",]
```

## Requirements
iOS 14.0+
Swift 5+

## Author
Richard Topchii
