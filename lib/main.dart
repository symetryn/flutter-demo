import 'package:flutter/material.dart';
import 'package:hello_world/core/router/router.gr.dart';
import 'package:hello_world/features/Home.dart';

import 'features/Login.dart';
import 'features/SignUp.dart';
import 'features/Wallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Home(),
        "/wallet": (context) => Wallet(),
        '/login': (context) => Login(),
        '/sign-up': (context) => SignUp(),
      },
    );
  }
}
