import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
   
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
  
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


  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCFLS9LJPtkD3MO2BCwsT-9tmwfyvBcJz0',
    appId: '1:23846083729:android:e4d925f5bdee99fd3db330',
    messagingSenderId: '23846083729',
    projectId: 'cinemago-74c0c',
    storageBucket: 'cinemago-74c0c.appspot.com',
  );

}
