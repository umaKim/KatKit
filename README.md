# KatKit
KatKit is a Swift UI library for iOS. It looks similar to the Daagn market category horizontal scroll view, while allowing customization when needed.

![Simulator Screen Recording - iPhone 12 Pro - 2021-12-21 at 22 48 26](https://user-images.githubusercontent.com/85341050/146948782-d67593e7-5c7f-45c7-8ea8-b576cd01fbe4.gif)

## Installation
KatKit can be installed with Swift Package Manager.

Swift Package Manager (Xcode 12 or higher)
The preferred way of installing KatKit is via the Swift Package Manager.

In Xcode, open your project and navigate to File → Swift Packages → Add Package Dependency...
Paste the repository URL (https://github.com/umaKim/KatKit.git) and click Next.
For Rules, select Version (Up to Next Major) and click Next.
Click Finish.

## Usage
```Swift
let katView = KatView()
katView.items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6", "Item 7", "Item 8"]
```

```Swift
katView.delegate = self
func katView(didSelectItemAt item: String) {
 
}
```

## Requirements
iOS 14.0+
Swift 5+

## Author
Uma Kim
