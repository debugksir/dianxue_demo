# draw

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 保存图片需要读写权限

1. android

在 android/app/src/main/AndrioidManifest.xml中添加

```xml
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
```

1. ios

在ios/Runner/info.plist中添加

```xml
<key>NSPhotoLibraryAddUsageDescription</key>
<string>App需要您的同意,才能保存照片到相册</string>
```
