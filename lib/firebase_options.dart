// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDLIzAI7_kMEZBnL7q52keABvc0VU7aAUg',
    appId: '1:412477319351:web:7d85babed00acfcd71c532',
    messagingSenderId: '412477319351',
    projectId: 'crud-6ca96',
    authDomain: 'crud-6ca96.firebaseapp.com',
    storageBucket: 'crud-6ca96.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSko7Tn0q-HotXdbHOgJoS_43DdhHQI3Y',
    appId: '1:412477319351:android:8d8a1901e7cea37a71c532',
    messagingSenderId: '412477319351',
    projectId: 'crud-6ca96',
    storageBucket: 'crud-6ca96.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0G1SWB4uIt5ZpjRqL6VOn_cEwSCzI2N8',
    appId: '1:412477319351:ios:5a34da225e4d4ca371c532',
    messagingSenderId: '412477319351',
    projectId: 'crud-6ca96',
    storageBucket: 'crud-6ca96.appspot.com',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0G1SWB4uIt5ZpjRqL6VOn_cEwSCzI2N8',
    appId: '1:412477319351:ios:5a34da225e4d4ca371c532',
    messagingSenderId: '412477319351',
    projectId: 'crud-6ca96',
    storageBucket: 'crud-6ca96.appspot.com',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDLIzAI7_kMEZBnL7q52keABvc0VU7aAUg',
    appId: '1:412477319351:web:3eda4308fdaec0ce71c532',
    messagingSenderId: '412477319351',
    projectId: 'crud-6ca96',
    authDomain: 'crud-6ca96.firebaseapp.com',
    storageBucket: 'crud-6ca96.appspot.com',
  );
}
