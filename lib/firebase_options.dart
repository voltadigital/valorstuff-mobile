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
    apiKey: 'AIzaSyCC4eADY5GE5NOwxUifVhI3YSkeQKnKmQ4',
    appId: '1:982566218126:web:c30d6cc899775e9f8edcdf',
    messagingSenderId: '982566218126',
    projectId: 'valorstuff-3261b',
    authDomain: 'valorstuff-3261b.firebaseapp.com',
    storageBucket: 'valorstuff-3261b.appspot.com',
    measurementId: 'G-EM5RX73GLZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClTrfaVYDUp2mO2MVvAIGh-cNpHKJXOzs',
    appId: '1:982566218126:android:50809653f508eb558edcdf',
    messagingSenderId: '982566218126',
    projectId: 'valorstuff-3261b',
    storageBucket: 'valorstuff-3261b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDobwdDkPJ0TjnxwKqOzUF6xplT9ifOBPM',
    appId: '1:982566218126:ios:55ec954936648ec48edcdf',
    messagingSenderId: '982566218126',
    projectId: 'valorstuff-3261b',
    storageBucket: 'valorstuff-3261b.appspot.com',
    iosClientId: '982566218126-a5t4nd16knbeqqf1dmh3932t3cmf5vjk.apps.googleusercontent.com',
    iosBundleId: 'com.voltadigital.valorstuff',
  );
}
