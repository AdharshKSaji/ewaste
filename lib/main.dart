
import 'package:ewaste/View/Home/Home.dart';
import 'package:ewaste/View/SignUP/Signup.dart';
import 'package:ewaste/View/Splash/Splash.dart';
import 'package:ewaste/controller/BookController.dart';
import 'package:ewaste/controller/CartController.dart';
import 'package:ewaste/controller/CheckOutController.dart';
import 'package:ewaste/controller/FavController.dart';
import 'package:ewaste/controller/SearchController.dart';
import 'package:ewaste/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       
       
        ChangeNotifierProvider(
          create: (context) => SignUpController(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BookingController(),),
       ChangeNotifierProvider(create: (_) => CheckoutController()),
       ChangeNotifierProvider(create: (_) => AuthController()),
       ChangeNotifierProvider(create: (_) => ScratchController()),
      
          
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SignInScreen()
      ),
    );
  }
}
