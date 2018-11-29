# iOS-Architecture
这是一个简单的按照个人的理解实现的Architecture;包括：MVC，MVP,MVVM,Viper

## MVC
#### 请下载代码切换到‘feature/havi/mvc-arcchitecture'分支：
- 标准的MVC结构
![MVC-Architecture!](https://github.com/iOS-Architecture-Module/iOS-Architecture/blob/master/mvc.png "MVC-Architecture")

- 标准MVC中VC的职责：https://developer.apple.com/documentation/uikit/uiviewcontroller?language=objc
  - 更新视图的内容，通常是响应底层数据Model的变化
  - 响应界面的用户交互
  - 重新布局和管理整个交互界面
  - 协调app的其他对象--包括其他的VC
