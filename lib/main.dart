import 'package:flutter/material.dart';
import 'package:uber_clone_flutter/src/pages/login/login.page.dart';
import 'package:uber_clone_flutter/src/pages/register/register.page.dart';
import 'package:uber_clone_flutter/src/utils/my_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App Flutter',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => const LoginPage(),
        'register': (BuildContext context) => const RegisterPage(),
      },
      theme: ThemeData(primaryColor: MyColors.primaryColor),
    );
  }
}
