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
    apiKey: 'AIzaSyAIR7RCj0UNhpOyPTjT05o5dIhrygTmg9I',
    appId: '1:863838160927:web:8d9873e5ba8ddc5d072d2a',
    messagingSenderId: '863838160927',
    projectId: 'my-first-project-56712',
    authDomain: 'my-first-project-56712.firebaseapp.com',
    storageBucket: 'my-first-project-56712.appspot.com',
    measurementId: 'G-PGEHM2JHJ4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEmab4w2b0egq4vPExxlLQMRgGp-DeiBc',
    appId: '1:863838160927:android:3491b3b862110910072d2a',
    messagingSenderId: '863838160927',
    projectId: 'my-first-project-56712',
    storageBucket: 'my-first-project-56712.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAS1dxCHHh5dpTXpiQr-BN_YPzeyC1pKXc',
    appId: '1:863838160927:ios:3d2d20d765d339ff072d2a',
    messagingSenderId: '863838160927',
    projectId: 'my-first-project-56712',
    storageBucket: 'my-first-project-56712.appspot.com',
    iosBundleId: 'com.example.realTimeChatting',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAS1dxCHHh5dpTXpiQr-BN_YPzeyC1pKXc',
    appId: '1:863838160927:ios:cae6a987193759a2072d2a',
    messagingSenderId: '863838160927',
    projectId: 'my-first-project-56712',
    storageBucket: 'my-first-project-56712.appspot.com',
    iosBundleId: 'com.example.realTimeChatting.RunnerTests',
  );
}
