# VIPER-Module
Xcode template for VIPER Architecture - Now supports MVVMC Architecture :boom:

If your iOS app is built with VIPER architecture, it's time consuming to create a new module, since we need to create 5 files for each module. Imagine that you need to create 10-12 modules, assuming that each module takes 15 minutes to be created, so (10*15) you need 2,5 hours to create these 10 modules. I think it's useful to create an automated tool that does this dummy work for you. 

## How to install

### Using script (easy)
Only need execute this command in terminal:
To generate MVVMC architecture template 
```swift
sudo swift install.swift mvvmc 
```
To generate VIPER architecture template 
```swift
sudo swift install.swift viper 
```
You should be this output message:

![](assets/terminal.png)

If all it's ok you now could find your template in Xcode.


### Manual
Go to Application folder, browse to the Xcode application icon. Right-click it and choose 'Show Package Contents'. Then browse to:
`Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application` and add "Module VIPER.xctemplate" file. Now you can find your template in Xcode.


## Easy to use
![](/assets/VIPER-Module-demo.gif)


## Easy to use
![](/assets/VIPER-B-Architecture.png)

## References
- [iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52#.ba7q8dcih)
- [#8 VIPER to be or not to be?](https://swifting.io/blog/2016/03/07/8-viper-to-be-or-not-to-be/)
- [https://www.objc.io/issues/13-architecture/viper/](https://www.objc.io/issues/13-architecture/viper/)
- [https://www.ckl.io/blog/ios-project-architecture-using-viper/](https://www.ckl.io/blog/ios-project-architecture-using-viper/)
- [https://academy.realm.io/posts/break-the-monoloth-with-b-viper-modules/](https://academy.realm.io/posts/break-the-monoloth-with-b-viper-modules/)
