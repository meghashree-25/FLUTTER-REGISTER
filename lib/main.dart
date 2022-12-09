
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterregister/login.dart';
import 'package:flutterregister/mainscreen.dart';
import 'package:flutterregister/onBoarding.dart';
import 'package:flutterregister/signup.dart';
import 'package:flutterregister/splash.dart';
const kBackgroundColor = Color(0xFF202020);
const kPrimaryColor = Color(0xFFFFBD73);
Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      initialRoute: FirebaseAuth.instance.currentUser == null ? OnBoardingPage.idScreen : MainScreen.idScreen,
      routes:
      {
        OnBoardingPage.idScreen:(context) => OnBoardingPage(),
        RegisterationScreen.idScreen: (context) => RegisterationScreen(),
        LoginScreen.idScreen: (context) => LoginScreen(),
        MainScreen.idScreen: (context) => MainScreen(),
      },
      debugShowCheckedModeBanner: false,
     // home: SplashScreen(),
    );
  }
}
