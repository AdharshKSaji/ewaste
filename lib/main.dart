import 'package:ewaste/View/Home/Home.dart';
import 'package:ewaste/controller/BookController.dart';
import 'package:ewaste/controller/CartController.dart';
import 'package:ewaste/controller/CheckOutController.dart';
import 'package:ewaste/controller/FavController.dart';
import 'package:ewaste/controller/SearchController.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:provider/provider.dart';


// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  MultiProvider(
//       providers: [
       
       
//         ChangeNotifierProvider(
//           create: (context) => CartController(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => FavoriteController(),
//         ),
//         ChangeNotifierProvider(
//           create: (context) => BookingController(),),
//        ChangeNotifierProvider(create: (_) => CheckoutController()),
//       //  ChangeNotifierProvider(create: (_) => AuthController()),
//        ChangeNotifierProvider(create: (_) => ScratchController()),
      
          
//       ],
//       child: MaterialApp(
//         title: 'Firebase Auth with Provider',
//         theme: ThemeData(primarySwatch: Colors.blue),
//         home: HomeScreen(),
//       ),
//     );
//   }
// }


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyCm27_LPt87C_ioBgcAUjTFULKvYjXMjj0',
      appId: '1:838745022063:android:9a96cdb56a78fc32ceb79a',
      messagingSenderId: '838745022063',
      projectId: 'e-waste-1',
      storageBucket: 'e-waste-1.appspot.com',
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
       
       
        ChangeNotifierProvider(
          create: (context) => CartController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BookingController(),),
       ChangeNotifierProvider(create: (_) => CheckoutController()),
      //  ChangeNotifierProvider(create: (_) => AuthController()),
       ChangeNotifierProvider(create: (_) => ScratchController()),
      
          
      ],
      child: MaterialApp(
        title: 'Firebase Auth with Provider',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomeScreen(),
      ),
    );
  }
}