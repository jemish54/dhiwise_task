# Dhiwise Task

## Setting Up and Testing Your Flutter App

This document provides instructions for setting up the development environment and testing your Flutter application.

### Prerequisites:

- [Flutter SDK](https://docs.flutter.dev)
- (Optional) [Android Studio](https://developer.android.com/studio) 
- (Optional) [Xcode](https://developer.apple.com/xcode/resources/)

### Setup:

1. **Install Flutter SDK:** Follow the instructions on the official Flutter website.
2. **(Optional) Install Android Studio/Xcode:** If you plan to develop for Android, install Android Studio. Similarly, install Xcode for iOS development.
3. **Clone the Git repository:** Clone the repository.
4. **Run `flutter pub get`:** This command will install all the dependencies required by your app.
5. **Run** `dart run build_runner build`: This command will generate all the code that needs to be generated for packages that depends on code generation.

### Testing:

##### **Run the app:**
    
- **Android:** Execute `flutter run`.
- **iOS:** Run `flutter run -d [device_name]`, where `[device_name]` is the name of your iOS device.



