// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// / Default [FirebaseOptions] for use with your Firebase apps.
// /
// / Example:
// / ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
// / ```
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
    apiKey: 'AIzaSyCpdWlZz8c6i58Ws7fADb6EeAz3Q53pfbk',
    appId: '1:838745022063:web:c0fb49e1aaf1042fceb79a',
    messagingSenderId: '838745022063',
    projectId: 'e-waste-1',
    authDomain: 'e-waste-1.firebaseapp.com',
    storageBucket: 'e-waste-1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCm27_LPt87C_ioBgcAUjTFULKvYjXMjj0',
    appId: '1:838745022063:android:9a96cdb56a78fc32ceb79a',
    messagingSenderId: '838745022063',
    projectId: 'e-waste-1',
    storageBucket: 'e-waste-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDtfQkGPKI3HFeGB6wIqWMHvh5yEQ49UeM',
    appId: '1:838745022063:ios:77968bba84c6196fceb79a',
    messagingSenderId: '838745022063',
    projectId: 'e-waste-1',
    storageBucket: 'e-waste-1.appspot.com',
    iosBundleId: 'com.intern.ewaste',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDtfQkGPKI3HFeGB6wIqWMHvh5yEQ49UeM',
    appId: '1:838745022063:ios:79ff8e42411d069aceb79a',
    messagingSenderId: '838745022063',
    projectId: 'e-waste-1',
    storageBucket: 'e-waste-1.appspot.com',
    iosBundleId: 'com.example.ewaste',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCpdWlZz8c6i58Ws7fADb6EeAz3Q53pfbk',
    appId: '1:838745022063:web:c817387e6756c96aceb79a',
    messagingSenderId: '838745022063',
    projectId: 'e-waste-1',
    authDomain: 'e-waste-1.firebaseapp.com',
    storageBucket: 'e-waste-1.appspot.com',
  );

}