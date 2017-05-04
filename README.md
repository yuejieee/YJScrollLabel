# YJScrollLabel
## Description
项目过程中会遇到一些要展示的字符串过长，我们所定义的label无法完整显示这个字符串的内容，为了解决这个问题就封装了一个可以滚动显示字符串内容的Label，可根据字符串长度进行往复滚动显示。
## Perview 
<div align="center">
<img src="https://github.com/yuejieee/YJScrollLabel/blob/master/YJScrollLabel/Image/PreviewImage.gif" width="500"/>
</div>

## Requirements

Swift 3.0 <br>
Xcode 8 <br>
iOS 9.0+

## Installation

CocoaPods
```
pod 'YJScrollLabel'
```

## Usage

```
  let rect = CGRect.init(x: 0, y: 0, width: 250, height: 30)
  let scrollLabel = ScrollLabel.init(frame: rect)
  scrollLabel.center = self.view.center
  self.view.addSubview(scrollLabel)
  scrollLabel.setTitle("😀😁🤣😂😄😅😆😇😉😊🙂😊🙂🙃☺️😋😌😍😘") // 设置label显示的内容
```

## Method

```
func setTitle(_ title: NSString, _ alignment: NSTextAlignment = .left, _ font: UIFont = UIFont.systemFont(ofSize: 15))
```

主要用来设置label显示的内容，字体，对齐方式。因为对齐方式和字体存在默认值，方法调用时可只进行title的设置。
