import 'package:flutter/material.dart';
import 'package:hello_world/core/router/router.gr.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:hello_world/features/Home.dart';

import 'features/Login.dart';
import 'features/SignUp.dart';
import 'features/Wallet.dart';

void main() {
  runApp(MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   initialRoute: '/login',
    //   debugShowCheckedModeBanner: false,
    //   routes: {
    //     '/': (context) => Home(),
    //     "/wallet": (context) => Wallet(),
    //     '/login': (context) => Login(),
    //     '/sign-up': (context) => SignUp(),
    //   },
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        // Initialize FlutterFire:
        future: _initialization,
        builder: (context, snapshot) {
          // Check for errors
          if (snapshot.hasError) {
            return Center(
                child: Text("Error intializing firebase \n" +
                    snapshot.error.toString()));
          }

          // Once complete, show your application
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),
            );
          }

          // Otherwise, show something whilst waiting for initialization to complete
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
