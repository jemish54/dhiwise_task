// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD758TaDm0mkFue2mWwCbo-tYqvm63PxX0',
    appId: '1:853587059628:web:35d3e9b57c423efdd09009',
    messagingSenderId: '853587059628',
    projectId: 'dhiwise-task',
    authDomain: 'dhiwise-task.firebaseapp.com',
    storageBucket: 'dhiwise-task.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDm3tgZOEVPjN-0APnz6dKCYQbAEyMUZlw',
    appId: '1:853587059628:android:a95a86faa86a4078d09009',
    messagingSenderId: '853587059628',
    projectId: 'dhiwise-task',
    storageBucket: 'dhiwise-task.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDV58dl9emCCRqpB7Br8pv1P5-rqrmjwmU',
    appId: '1:853587059628:ios:5e50beb87d33fbc6d09009',
    messagingSenderId: '853587059628',
    projectId: 'dhiwise-task',
    storageBucket: 'dhiwise-task.appspot.com',
    iosBundleId: 'com.example.dhiwiseTask',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDV58dl9emCCRqpB7Br8pv1P5-rqrmjwmU',
    appId: '1:853587059628:ios:f6213aa4f8777bdbd09009',
    messagingSenderId: '853587059628',
    projectId: 'dhiwise-task',
    storageBucket: 'dhiwise-task.appspot.com',
    iosBundleId: 'com.example.dhiwiseTask.RunnerTests',
  );
}