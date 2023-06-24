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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCDxDZIEnDcWFVKBbl9NE2zaylR_U4qn8g',
    appId: '1:775587961471:web:56e1ab5ddbb2807f79fd4a',
    messagingSenderId: '775587961471',
    projectId: 'tik-tok-miumiu',
    authDomain: 'tik-tok-miumiu.firebaseapp.com',
    storageBucket: 'tik-tok-miumiu.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXXQpmQqeP-UF_LJhFDP234ikPxeij0x8',
    appId: '1:775587961471:android:970041f0ec94750479fd4a',
    messagingSenderId: '775587961471',
    projectId: 'tik-tok-miumiu',
    storageBucket: 'tik-tok-miumiu.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfAJbwEjBKmsaF4WpTr8gTAqgokMNcRWw',
    appId: '1:775587961471:ios:d2438d59999acd2979fd4a',
    messagingSenderId: '775587961471',
    projectId: 'tik-tok-miumiu',
    storageBucket: 'tik-tok-miumiu.appspot.com',
    iosClientId: '775587961471-o30sr1jmcmee0bvf3gq0m2pg37ccu1m8.apps.googleusercontent.com',
    iosBundleId: 'com.example.tiktokClone',
  );
}