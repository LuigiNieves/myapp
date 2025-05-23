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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCsOJaWkPYlS31G6ViuVz0blGG929rrbOw',
    appId: '1:302926771437:web:0994a28966f869681608e4',
    messagingSenderId: '302926771437',
    projectId: 'loginrm-946ee',
    authDomain: 'loginrm-946ee.firebaseapp.com',
    storageBucket: 'loginrm-946ee.firebasestorage.app',
    measurementId: 'G-5LC9QBBGK9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA0mp5RS0lhcJ5rzig-zlaroyNcTB6fGj0',
    appId: '1:302926771437:android:ce9bf0a47d318c091608e4',
    messagingSenderId: '302926771437',
    projectId: 'loginrm-946ee',
    storageBucket: 'loginrm-946ee.firebasestorage.app',
  );
}
