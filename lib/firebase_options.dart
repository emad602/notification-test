
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
            'you can reconfigure this by running the FlutterFire CLI again.',
      );
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDShl8E-Rn_u7msgIO13WOaO0ZJmIUzXEQ',
    appId: '1:714852231796:android:9f6bf7960c4c0985213f21',
    messagingSenderId: '714852231796',
    projectId: 'limilesspark',
    storageBucket: 'limilesspark.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDO-BAYl0dkcoBY8K59oHFF7TCVKzZo1KI',
    appId: '1:661566425740:ios:e58cb078013b0c1ffd49a9',
    messagingSenderId: '661566425740',
    projectId: 'test-ios-af7d7',
    storageBucket: 'test-ios-af7d7.appspot.com',
    androidClientId: '714852231796-5gfsl7red4a3vkkuckdrmvpe3gu9vc3e.apps.googleusercontent.com',
    iosClientId: '661566425740-1frdghmo1jes98p2eu6k2eqlpc6382fd.apps.googleusercontent.com',
    iosBundleId: 'com.apps-test-notification.testNnotification',
  );
}
