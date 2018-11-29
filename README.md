# iOS-Architecture
这是一个简单的按照个人的理解实现的Architecture;包括：MVC，MVP,MVVM,Viper

## MVC
#### 请下载代码切换到‘feature/havi/mvc-arcchitecture'分支：
- 标准的MVC结构
![MVC-Architecture!](https://github.com/iOS-Architecture-Module/iOS-Architecture/blob/master/mvc.png "MVC-Architecture")
  - VC同时持有(引用)View和Model；实线部分
  - 虚线部分是通讯流程

- 标准MVC中VC的职责：https://developer.apple.com/documentation/uikit/uiviewcontroller?language=objc
  - 更新视图的内容，通常是响应底层数据Model的变化
  - 响应界面的用户交互
  - 重新布局和管理整个交互界面
  - 协调app的其他对象--包括其他的VC
 
- 实际开发过程中VC还承担了：
  - Model和View的初始化及binding
  - 各种业务逻辑（model数据的变化、登录操作等）
  - 网络请求
  
  ![MVC-Architecture!](https://github.com/iOS-Architecture-Module/iOS-Architecture/blob/master/mvc-real.png "MVC-Architecture")
- MVC模式的缺陷
  - VC过于臃肿；
  - 实际开发中容易View和Model产生耦合
  - Model职责过于简单
  - 不方便UnitTest
