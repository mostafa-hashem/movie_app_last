// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

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
    apiKey: 'AIzaSyB7liM6beHH5yQZL-ScdwA3D9varzyfCq0',
    appId: '1:851861970735:web:bcec429b7f7882d67c4bda',
    messagingSenderId: '851861970735',
    projectId: 'movies-319',
    authDomain: 'movies-319.firebaseapp.com',
    storageBucket: 'movies-319.appspot.com',
    measurementId: 'G-M671RNZ54B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBj61DAiDRI2aGUrqtDAAkH_ftx_vHW6aI',
    appId: '1:851861970735:android:499df70508ccba5e7c4bda',
    messagingSenderId: '851861970735',
    projectId: 'movies-319',
    storageBucket: 'movies-319.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB567gUK5w09dAykf4M79lXrlx5WBogD-0',
    appId: '1:851861970735:ios:b29c11cc69d3b5257c4bda',
    messagingSenderId: '851861970735',
    projectId: 'movies-319',
    storageBucket: 'movies-319.appspot.com',
    iosClientId: '851861970735-fosgov24mhhor5li3dobtp0fodmj327h.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB567gUK5w09dAykf4M79lXrlx5WBogD-0',
    appId: '1:851861970735:ios:6ffbd1f19641a6807c4bda',
    messagingSenderId: '851861970735',
    projectId: 'movies-319',
    storageBucket: 'movies-319.appspot.com',
    iosClientId: '851861970735-44ce5au0u7eidug05rgjq1f6cqi7686m.apps.googleusercontent.com',
    iosBundleId: 'com.example.untitled1.RunnerTests',
  );
}
