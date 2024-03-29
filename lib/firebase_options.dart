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
    apiKey: 'AIzaSyBzzw2w7JO2SQy0KSjD28JcCq3gHIi3vvs',
    appId: '1:556951935916:web:3b9b8461b63a124ae77809',
    messagingSenderId: '556951935916',
    projectId: 'netflix-3ca79',
    authDomain: 'netflix-3ca79.firebaseapp.com',
    storageBucket: 'netflix-3ca79.appspot.com',
    measurementId: 'G-P1GY3JJXRQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAplZEZQmj6728JKN2gVpHeIXZN-dWO_JM',
    appId: '1:556951935916:android:b4e394863f0c060ae77809',
    messagingSenderId: '556951935916',
    projectId: 'netflix-3ca79',
    storageBucket: 'netflix-3ca79.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAYM56Lth3WwoBXk0HY8VpUyf-S1igImaU',
    appId: '1:556951935916:ios:4341310dd7fe4b59e77809',
    messagingSenderId: '556951935916',
    projectId: 'netflix-3ca79',
    storageBucket: 'netflix-3ca79.appspot.com',
    iosClientId: '556951935916-go5l31f9uiprbcs7k06kfj4jtnce4g9q.apps.googleusercontent.com',
    iosBundleId: 'com.example.netflixClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAYM56Lth3WwoBXk0HY8VpUyf-S1igImaU',
    appId: '1:556951935916:ios:4341310dd7fe4b59e77809',
    messagingSenderId: '556951935916',
    projectId: 'netflix-3ca79',
    storageBucket: 'netflix-3ca79.appspot.com',
    iosClientId: '556951935916-go5l31f9uiprbcs7k06kfj4jtnce4g9q.apps.googleusercontent.com',
    iosBundleId: 'com.example.netflixClone',
  );
}
