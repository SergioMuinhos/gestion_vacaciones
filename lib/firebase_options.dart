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
    apiKey: 'AIzaSyCrmCYBAmUuOV1GC-vcZmaHoU4y3V8bbms',
    appId: '1:533843973693:web:f422d09ceb667b86bcfc54',
    messagingSenderId: '533843973693',
    projectId: 'gestion-vacaciones',
    authDomain: 'gestion-vacaciones.firebaseapp.com',
    storageBucket: 'gestion-vacaciones.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDevHC6AuTekLhuUVhlLAHpZ5W5hefalw8',
    appId: '1:533843973693:android:e5ff6a66ac91ac14bcfc54',
    messagingSenderId: '533843973693',
    projectId: 'gestion-vacaciones',
    storageBucket: 'gestion-vacaciones.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5kMII048q1HE4IlBkqVNc9szPcMAgu8I',
    appId: '1:533843973693:ios:0db9ec381a91e44bbcfc54',
    messagingSenderId: '533843973693',
    projectId: 'gestion-vacaciones',
    storageBucket: 'gestion-vacaciones.appspot.com',
    iosBundleId: 'com.example.gestionVacaciones2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5kMII048q1HE4IlBkqVNc9szPcMAgu8I',
    appId: '1:533843973693:ios:8203eb923f76a145bcfc54',
    messagingSenderId: '533843973693',
    projectId: 'gestion-vacaciones',
    storageBucket: 'gestion-vacaciones.appspot.com',
    iosBundleId: 'com.example.gestionVacaciones2.RunnerTests',
  );
}
