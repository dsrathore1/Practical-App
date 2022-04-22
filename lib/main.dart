import 'package:app/Pages/Signup.dart';
import 'package:flutter/material.dart';
import "package:app/Pages/dashboard.dart";
import 'package:app/Pages/Login.dart';
import 'package:flutter/services.dart';

Future main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black87,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarDividerColor: Colors.black,
      statusBarColor: Colors.black87,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  await initialization(null);
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Registration App",
      theme: ThemeData(primaryColor: Colors.pink),
      initialRoute: "/Login",
      routes: {
        "/Dashboard": (context) => const Dashboard(),
        "/Login": (context) => const Login(),
        "/SignUp": (context) => const SignUp(),
      },
    );
  }
}
