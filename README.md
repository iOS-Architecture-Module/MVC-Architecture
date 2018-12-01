# iOS-Architecture
这是一个简单的按照个人的理解实现的Architecture;包括：MVC，MVP,MVVM,Viper

## MVC
#### 请下载代码切换到‘developer'分支：
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
  - View和VC强耦合
  - 实际开发中容易View和Model产生耦合
  - Model职责过于简单
  - 不方便UnitTest
  
- MVC通信方式；其实就是标准MVC中虚线部分
  - 视图收到来自用户的事件，需要将事件交给VC处理(一般方式有delegate/block/notification),VC然后改变Model，然后Model更新后反向通知VC更新View
  - Model有更新后，告知VC，VC通过View暴露的接口进行更新View
  
- MVC引用关系：
  - MVC三个模块之间是相互引用的；
  
***

- MVP架构图：
![MVP-Architecture!](https://github.com/iOS-Architecture-Module/iOS-Architecture/blob/master/mvp.png "MVP-Architecture")


- MVP引用关系：

  - 在MVP中，Presenter是持有Model
  - Model和View相互不知道彼此的存在
  - Model和View通过Presenter进行通信

- MVP各个模块职责：
  - Presenter中是没有和布局有关的代码；主要负责接受用户事件和Model交互；有时候网络请求也放到这里来
  - View进行界面显示
  - Model单纯的model

- MVP的解决的问题：
  - MVC中存在的问题；

- MVP的缺陷：
  - 由于Model和View互不不知道彼此存在，因此当Model发生变化后，无法立即体现在View上面来
  
  ***
  
- MVVM架构图：
![MVP-Architecture!](https://github.com/iOS-Architecture-Module/iOS-Architecture/blob/master/mvvm.png "MVP-Architecture")
MVVM中关键是View和ViewModel进行了绑定

  - 基于KVO的绑定：[FBKVO](https://github.com/facebook/KVOController)/[RZDataBinding](https://github.com/Raizlabs/RZDataBinding)/[Bond](https://github.com/DeclarativeHub/Bond)
  - 基于响应式编程：[RxSwift](https://github.com/ReactiveX/RxSwift)/[ReactiveCocoa](https://github.com/ReactiveCocoa/ReactiveCocoa)/[PromiseKit](https://github.com/mxcl/PromiseKit)

- MVVM的引用关系
  - 在MVVM中，VM持有Model和View
  
- MVVM各个模块的职责

